@extends('student.layouts.main')
@section('main-section')
<div class="main-content">
    <style>
        .listHeader {
            display: flex;
            justify-content: space-between;
        }
        /* Additional styles omitted for brevity */
    </style>

    <div class="page-content">
        <div class="container-fluid">
            @if (Session::has('success'))
                <div class="alert alert-success">{{ Session::get('success') }}</div>
            @endif
            @if (Session::has('fail'))
                <div class="alert alert-danger">{{ Session::get('fail') }}</div>
            @endif

            <div class="mb-3 listHeader page-title-box">
                <h3>Enroll Now</h3>
            </div>
            <div class="avalability">
                <i class="fa fa-square red" style="color: #F49D8C" aria-hidden="true"></i><span>&nbsp;Not Available</span>
                <i class="fa fa-square green" style="color: #0BB39C" aria-hidden="true"></i><span>&nbsp;Available</span>
                <i class="fa fa-square blue" style="color: #405189" aria-hidden="true"></i><span>&nbsp;Selected</span>
            </div>
            <form id="payment-search" action="{{ route('student.purchaseclass') }}" method="POST">
                @csrf
                <div class="row ">
                    <div class="col-md-3 mt-4">
                        <label for="">Tutor</label>
                        <input type="hidden" id="tutorenrollid" name="tutorenrollid" value="{{ $enrollment->tutor_id }}">
                        <input type="text" class="form-control readonly" name="tutorenroll" id="tutorenroll" readonly value="{{ $enrollment->tutor_name }}">
                        <span class="text-danger">@error('tutorenrollid') {{ $message }} @enderror</span>
                    </div>
                    <div class="col-md-3 mt-4" hidden>
                        <input type="hidden" id="subjectenrollid" name="subjectenrollid" value="{{ $enrollment->subject_id }}">
                        <input type="hidden" class="form-control readonly" name="subjectenroll" id="subjectenroll" readonly value="{{ $enrollment->subject_name }}">
                        <span class="text-danger">@error('subjectenrollid') {{ $message }} @enderror</span>
                    </div>
                    <div class="col-md-2 mt-4">
                        <label for="">Rate/Hr(£)</label>
                        <input type="text" class="form-control readonly" name="rateperhourenroll" id="rateperhourenroll" readonly value="{{ $enrollment->rate }}">
                        <span class="text-danger">@error('rateperhourenroll') {{ $message }} @enderror</span>
                    </div>

                        <input type="number" class="form-control" name="requiredclassenroll" id="requiredclassenroll" hidden required>
                    <div class="col-md-2 mt-4">
                        <label for="">Total Amount(£)</label>
                        <input type="text" class="form-control readonly" name="totalamountenroll" id="totalamountenroll" readonly>
                        <span class="text-danger">@error('totalamountenroll') {{ $message }} @enderror</span>
                    </div>
                </div>

                <hr>

                <div class="full-width-table-responsive">
                    <table class="table table-hover table-striped align-middle table-nowrap mb-0 users-table" style="height: 260px;">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Date</th>
                                <th scope="col">Slots</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($groupedSlots as $date => $slots)
                                <tr>
                                    <td>{{ $date }}</td>
                                    <td>
                                        @foreach ($slots as $slot)
                                            @php
                                                $formattedTime = \Carbon\Carbon::parse($slot['time'])->format('h:i A');
                                            @endphp
                                            <button type="button"
                                                class="slot-btn btn btn-sm btn-{{ $slot['is_available'] ? 'success' : 'danger' }}"
                                                data-date="{{ $date }}" data-time="{{ $formattedTime }}"
                                                data-slot-id="{{ $slot['id'] }}"
                                                {{ $slot['is_available'] ? '' : 'disabled' }}>
                                                {{ $formattedTime }}
                                            </button>
                                        @endforeach
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <div style="display: flex; justify-content:space-between" class="my-3">
                    <div>
                        <input type="hidden" id="slotids" name="slotids">
                        <input type="checkbox" id="contactadmin" name="contactadmin"> <span><label for="contactadmin"> Please select to contact Instructor for any support.</label> &nbsp;</span>
                        <button type="submit" style="height: 50px" class="btn btn-primary">Pay Now</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            var selectedSlots = [];

            $('.slot-btn').on('click', function () {
                var $button = $(this);
                var date = $button.data('date');
                var time = $button.data('time');
                var slotId = $button.data('slot-id');

                // Toggle slot selection
                if (!$button.hasClass('selected')) {
                    selectedSlots.push({ date: date, time: time, slotId: slotId });
                    $button.addClass('selected').removeClass('btn-success').addClass('btn-primary');
                } else {
                    selectedSlots = selectedSlots.filter(slot => !(slot.date === date && slot.time === time && slot.slotId === slotId));
                    $button.removeClass('selected').removeClass('btn-primary').addClass('btn-success');
                }

                // Update required classes and total amount
                updateRequiredClassesAndTotal();
            });

            function updateRequiredClassesAndTotal() {
                var requiredClasses = selectedSlots.length;
                $('#requiredclassenroll').val(requiredClasses); // Update hidden input
                var ratePerHour = parseFloat($('#rateperhourenroll').val());
                var totalAmount = requiredClasses * ratePerHour;
                $('#totalamountenroll').val(totalAmount.toFixed(2)); // Format to 2 decimal places
                $('#slotids').val(selectedSlots.map(slot => slot.slotId).join(','));
            }
        });
    </script>
@endsection
