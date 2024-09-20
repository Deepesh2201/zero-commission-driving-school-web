@extends('student.layouts.main')
@section('main-section')
<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="main-content">

    <div class="page-content">
        @if(Session::has('success'))
        <script>
            Swal.fire({
                toast: true,
                position: 'top-end',
                icon: 'success',
                title: '{{ Session::get('success') }}',
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            });
        </script>
    @endif
    
    @if(Session::has('fail'))
        <script>
            Swal.fire({
                toast: true,
                position: 'top-end',
                icon: 'error',
                title: '{{ Session::get('fail') }}',
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            });
        </script>
    @endif
    
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">{{session('usertype')}} Dashboard</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                {{-- <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li> --}}
                                {{-- <li class="breadcrumb-item active">Analytics</li> --}}
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->



            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                    <div class="card card-animate dashboardcard">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="dashCard">
                                    <p class="fw-medium  mb-0"><b>Total Classes Purchase</b></p>
                                    <div class="topCradCount">
                                        <h2 class="pt-2" style="color:#D63531;"><span class="counter-value"
                                                data-target="{{ count($subjects_enrolled) ?? '0' }}">{{ count($subjects_enrolled) ?? '0' }}</span>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                            <div style="float:right">
                                <a href="subjects" class="text-decoration-underline"><button
                                        class="badge bg-secondry p-2 text-dark border-0">View
                                        All</button></a>
                            </div>
                        </div><!-- end card body -->
                    </div> <!-- end card-->
                </div>

                <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                    <div class="card card-animate dashboardcard subjcard">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="dashCard">
                                    <p class="fw-medium  mb-0"><b>Attended Classes</b></p>
                                    <div class="topCradCount">
                                        <h2 class="pt-2 text-primary"><span class="counter-value"
                                                data-target="{{ ($atendedclasses) ?? '0' }}">{{ ($atendedclasses) ?? '0' }}</span>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                            <div style="float:right">
                                <a href="completed-classes" class="text-decoration-underline"><button
                                        class="badge bg-secondry p-2 text-dark border-0">View
                                        All</button></a>
                            </div>
                        </div><!-- end card body -->
                    </div> <!-- end card-->
                </div>

                <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                    <div class="card card-animate dashboardcard">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="dashCard">
                                    <p class="fw-medium  mb-0"><b>Assessment Readyness&nbsp;&nbsp;&nbsp;</b></p>
                                    <div class="topCradCount">
                                        <h2 class="pt-2" style="color: #59C069"><span class="counter-value"
                                                data-target="{{ count($tutors_enrolled) ?? '0' }}">{{ count($tutors_enrolled) ?? '0' }}</span>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                            <div style="float:right">
                                <a href="yourtutor" class="text-decoration-underline"><button
                                        class="badge bg-secondry p-2 text-dark border-0">View
                                        All</button></a>
                            </div>
                        </div><!-- end card body -->
                    </div> <!-- end card-->
                </div>




                <div class="col-md-3 col-sm-12 col-xs-12 col-lg-3">
                    <div class="card card-animate dashboardcard">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="dashCard">
                                    <p class="fw-medium  mb-0"><b>Over All Progress</b></p>

                                    @php
                                    $totalQuestions = 0;
                                    $totalAttempted = 0;
                                    @endphp

                                    @foreach ($pastQuizzes as $subjectId => $data)
                                    @php
                                    $totalQuestions += $data['totalQuestions'];
                                    $totalAttempted += $data['totalAttempted'];
                                    @endphp
                                    @endforeach
                                    @php
                                    if($totalQuestions != "" && $totalAttempted != "" && $totalQuestions != 0){
                                    $progressperc = $totalAttempted / $totalQuestions *100;
                                    }
                                    else{
                                    $progressperc = 1;
                                    }
                                    @endphp

                                    <div class="circular-progress " data-inner-circle-color="lightgrey"
                                        data-percentage="{{round($progressperc)}}" data-progress-color="#88B0F1"
                                        data-bg-color="white">
                                        <div class="inner-circle"></div>
                                        <p class="percentage">0%</p>
                                    </div>
                                </div>
                            </div>
                            <div style="float:right">
                                <a href="exams" class="text-decoration-underline"><button
                                        class="badge bg-secondry p-2 text-dark border-0">View Results
                                    </button></a>
                            </div>
                        </div><!-- end card body -->
                    </div> <!-- end card-->
                </div>
            </div>


            <div class="row">
                <div class="col-md-6">
                    <div class="card card-animate">
                        <div class="cardTitle">
                            <h5>Scheduled Classes</h5>
                            <a href="classes"><b>View All</b></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table dash_table">
                                    <thead>
                                        <tr class="">
                                            <th>Tutor</th>
                                            <th>Topic</th>
                                            <th>Scheduled Time</th>
                                            <th>Status</th>
                                            {{-- <th>Action</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($upclasses as $upcomingclass)
                                        <tr>
                                            <td>
                                                <div class="namePic">
                                                    <img src="/images/tutors/profilepics/{{ $upcomingclass->profile_pic }}"
                                                        alt="">
                                                    <span>{{ $upcomingclass->tutor_name }}</span>
                                                </div>
                                            </td>
                                            <td>{{ $upcomingclass->topics }}</td>
                                            <td>
                                                <div class="dayTime">
                                                    @php
                                                    if ($upcomingclass->start_time) {
                                                        $startDateTime = \Carbon\Carbon::parse($upcomingclass->start_time);
                                                        $now = \Carbon\Carbon::now();
                                                        
                                                        // Difference in hours between the current time and the class start time
                                                        $hoursDiff = $startDateTime->diffInHours($now, false); // 'false' keeps the sign of the difference
                                                        
                                                        if ($hoursDiff >= -1) { // Only show if the start time is in the future or within the last 1 hour
                                                            if ($startDateTime->isToday()) {
                                                                $message = 'Today';
                                                            } elseif ($startDateTime->isTomorrow()) {
                                                                $message = 'Tomorrow';
                                                            } else {
                                                                $daysToGo = $now->diffInDays($startDateTime);
                                                                $message = $daysToGo . ' days to go';
                                                            }
                                                        } else {
                                                            $message = '';  // No message for past events more than 1 hour ago
                                                        }
                                                    } else {
                                                        $message = '';  // Empty if start_time is not available
                                                    }
                                                    @endphp
                                            
                                                    @if($upcomingclass->start_time && $hoursDiff >= -1)
                                                        <span>{{ $message }}</span>
                                                        <small>{{ $startDateTime->format('d-m-Y h:i A') }}</small>  <!-- Formatted as dd-mm-yyyy hh:mm am/pm -->
                                                    @else
                                                        <span></span>  <!-- Empty if no start_time or past more than 1 hour -->
                                                    @endif
                                                </div>
                                            </td>
                                            

                                            <td>
                                                @if (in_array(strtolower($upcomingclass->status), ['confirmed',
                                                'waiting']))
                                                <span class="confirm">Confirmed</span>
                                                @elseif (in_array(strtolower($upcomingclass->status), ['started',
                                                'cancelled']))
                                                <span class="live">Live</span>
                                                @elseif (in_array(strtolower($upcomingclass->status), ['completed']))
                                                <span class="confirm">Completed</span>
                                                @endif
                                            </td>

                                            {{-- <td class="joinclass">
                                                @if (in_array(strtolower($upcomingclass->status), ['confirmed',
                                                'waiting', 'completed']))
                                                <span style="background-color: lightgrey"
                                                    class="badge border-0 bg-muted text-dark"
                                                    id="countdownTimer">{{ $upcomingclass->status }}</span>
                                                @elseif (in_array(strtolower($upcomingclass->status), ['started',
                                                'cancelled', 'live']))
                                                <a href="{{ $upcomingclass->join_url }}"><button class="badge border-0"
                                                        id="joinClassBtn">Join
                                                        Class</button></a>
                                                @endif
                                            </td> --}}

                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>


                        </div>
                    </div>
                </div>

                <!-- Schedule Trial Classes -->
                <div class="col-md-6">
                    <div class="card card-animate">
                        <div class="cardTitle">
                            <h5>Payment</h5>
                            <a href="demolist"><b>View All</b></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table trialtable dash_table">
                                    <thead>
                                        <tr class="">
                                            <th>Tutor</th>
                                            
                                            <th>Slot</th>
                                            <th>Status</th>
                                            {{-- <th>Action</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($demos as $democlass)
                                        <tr>
                                            <td>
                                                <div class="namePic">
                                                    <img src="/images/tutors/profilepics/{{ $democlass->profile_pic }}"
                                                        alt="">
                                                    <span>{{ $democlass->tutor_name }}</span>
                                                </div>
                                            </td>
                                            
                                            <td>
                                                <div class="dayTime">
                                                    @php
                                                    $startDateTime = \Carbon\Carbon::parse($democlass->slot_confirmed);
                                                    $now = \Carbon\Carbon::now();

                                                    if ($startDateTime->isToday()) {
                                                    $message = 'Today';
                                                    } elseif ($startDateTime->isTomorrow()) {
                                                    $message = 'Tomorrow';
                                                    } else {
                                                    $daysToGo = $now->diffInDays($startDateTime);
                                                    $message = $daysToGo . ' days to go';
                                                    }
                                                    @endphp
                                                    <span>{{ $message }}</span>
                                                    <small>{{ $startDateTime->format('Y-m-d H:i:s') }}</small>
                                                </div>
                                            </td>

                                            <td>

                                                @if ($democlass->status == 1)
                                                <span class="confirm">{{ $democlass->currentstatus }}</span>
                                                @elseif ($democlass->status == 2)
                                                <span class="confirm">{{ $democlass->currentstatus }}</span>
                                                @elseif ($democlass->status == 3)
                                                <span class="confirm">{{ $democlass->currentstatus }}</span>
                                                @elseif ($democlass->status == 4)
                                                <span class="confirm">{{ $democlass->currentstatus }}</span>
                                                @elseif ($democlass->status == 5)
                                                <span class="live">{{ $democlass->currentstatus }}</span>
                                                @else
                                                <span class="live">{{ $democlass->currentstatus }}</span>
                                                @endif

                                            </td>

                                            {{-- <td class="joinclass">
                                                @if ($democlass->status == 5)
                                                <a href="{{ $democlass->demo_link }}"><button class="badge border-0"
                                                        id="joinClassBtn2">Join Now</button></a>
                                                @else
                                                <span style="background-color: lightgrey"
                                                    class="badge border-0 bg-muted text-dark"
                                                    id="countdownTimer2">{{ $democlass->currentstatus }}</span>
                                                @endif
                                            </td> --}}

                                        </tr>
                                        @endforeach
                                    </tbody>

                                </table>
                            </div>


                        </div>
                    </div>
                </div>
            </div> <!-- end row-->

            <div class="row" hidden>
                <div class="col-md-6">
                    <div class="card card-animate">
                        <div class="cardTitle">
                            <h5>My Homework</h5>
                            <div class="hwMenu">
                                <a href="#test" onclick="switchmode(1)"><span class="test">Test</span></a>
                                <a href="#assignment" onclick="switchmode(2)"><span class="test">Assignment</span></a>

                            </div>
                            <a href="/student/exams" id="trplink"><b>View All</b></a>
                            <a href="/student/assignments" id="tasslink" hidden><b>View All</b></a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table trialtable dash_table" id="tbltest">
                                    <thead>
                                        <tr class="">
                                            <th>Subject</th>
                                            <th>Test Name</th>
                                            @if (session('usertype') == 'Parent')
                                            @else
                                            <th>Action</th>
                                            @endif
                                        </tr>
                                    </thead>
                                    <tbody>

                                        @foreach ($upcomingQuizes as $upcomingQuiz)
                                        <tr>
                                            <td>
                                                <div class="namePic">
                                                    {{-- <img src="/images/subjects/{{ $upcomingQuiz->subject_image }}"
                                                    alt=""> --}}
                                                    <span>{{ $upcomingQuiz->subject_name }}</span>
                                                </div>
                                            </td>
                                            {{-- <td>{{$upcomingQuiz->topic_name}}</td> --}}
                                            <td>{{ $upcomingQuiz->name }}</td>
                                            {{-- <td>{{$upcomingQuiz->start_date}}</td> --}}
                                            {{-- <td><span class="quizs">{{$upcomingQuiz->}}</span> </td> --}}
                                         @if (session('usertype') == 'Parent')
                                         <td></td>
                                             @else
                                             <td><a href="{{ url('student/taketest') }}/{{ $upcomingQuiz->id }}"><span
                                                class="test">Start Test</span></a></td>
                                         @endif

                                        </tr>
                                        @endforeach


                                    </tbody>

                                </table>

                                <table class="table trialtable dash_table " id="tblassignment" hidden>
                                    <thead>
                                        <tr class="">
                                            <th>Subject</th>
                                            <th>Assignment Name</th>
                                            @if (session('usertype') == 'Parent')
                                                @else
                                            <th>Action</th>
                                            @endif
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($upcomingAssignments as $upcomingAssignment)
                                        <tr>
                                            <td>
                                                <div class="namePic">
                                                    {{-- <img src="/images/subjects/{{ $upcomingQuiz->subject_image }}"
                                                    alt=""> --}}
                                                    <span>{{ $upcomingAssignment->subject_name }}</span>
                                                </div>
                                            </td>
                                            {{-- <td>{{$upcomingQuiz->topic_name}}</td> --}}
                                            <td>{{ $upcomingAssignment->assignment_name }}</td>
                                            {{-- <td>{{$upcomingQuiz->start_date}}</td> --}}
                                            {{-- <td><span class="quizs">{{$upcomingQuiz->}}</span> </td> --}}
                                            @if (session('usertype') == 'Parent')
                                                @else
                                            <td><a href="{{ $upcomingAssignment->assignment_link }}"><span
                                                class="test">Take</span></a></td>
                                                @endif
                                        </tr>
                                        @endforeach

                                    </tbody>

                                </table>

                            </div>


                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card card-animate">
                        <div class="cardTitle">
                            <h5>Results </h5>
                            <div class="hwMenu">
                                <a href="#testreports" onclick="testprogress(1)"><span class="assign">Test
                                        Report</span></a>
                                <a href="#progressreports" onclick="testprogress(2)"><span class="assign">Progress
                                        Report</span></a>
                            </div>
                            <a href="/student/exams"><b>View All</b></a>
                        </div>
                        <div class="card-body" id="testreport">

                            <div class="table-responsive">
                                <table class="table trialtable dash_table" id="">
                                    <thead>
                                        <tr class="">
                                            <th>Test</th>
                                            <th>Total Marks</th>
                                            <th>Obtained</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        @php $count = 0; @endphp
                                        @foreach ($pastQuizes as $pastQuiz)
                                        @if ($count >= 5)
                                        @break
                                        @endif
                                        <tr>
                                            <td>{{ $pastQuiz->exam_name }}</td>
                                            <td>{{ $pastQuiz->questionsCount }}</td>
                                            <td>{{ $pastQuiz->correctResponsesCount }}</td>
                                            <td style="width:23%"><a
                                                    href="/student/exam/report/{{ $pastQuiz->id }}"><span
                                                        class="assign">View Details</span></a></td>
                                        </tr>
                                        @php $count++; @endphp
                                        @endforeach

                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <div class="card-body" id="progressreport" hidden>

                            <table class="table trialtable dash_table table-responsive">
                                <thead>
                                    <tr class="">
                                        <th>Subject</th>
                                        <th>Total Tests</th>
                                        <th>Progress</th>
                                        <th>Action </th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @php $count = 0; @endphp
                                    @foreach ($pastQuizzes as $subjectId => $data)
                                    @if ($count >= 5)
                                    @break
                                    @endif
                                    <tr>
                                        <td>{{ $data['subjectName'] }}</td>
                                        <td>{{ $data['totalTests'] }}</td>
                                        <td>{{ $data['totalAttempted'] / $data['totalQuestions'] * 100}} %</td>
                                        <td><a href="/student/exams"><span class="assign"> View</span></a></td>
                                    </tr>
                                    @php $count++; @endphp
                                    @endforeach

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>




                <!-- end row-->
            </div><!-- end col -->
        </div> <!-- end row-->


        <!-- tutor and subjects -->

       

<!--Demo modal -->
<div class="modal fade" id="openDemoModal" tabindex="-1" role="dialog"
aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">


        <div class="modal-body">


            <header>
                <h3 class="text-center ">Free Trial Class</h3>
                <p style="color: red">*Please provide your preferred time slots for the trial class. Once confirmed by the tutor, be punctual and join at the specified time.</p>
            </header>

            <form action="{{ route('student.bookdemo') }}" method="POST">
                @csrf
                <div class=" row mb-2">

                    <div class="form-group col-md-6">
                        {{-- <label for="">Candidate</label> --}}
                        <input type="hidden" class="form-control" id="demostudentname"
                            value="{{ session('userid')->name }}" disabled>

                    </div>
                    <div class="form-group col-md-6">
                        {{-- <label for="">Tutor</label> --}}
                        <input type="hidden" class="" id="demotutorid" name="demotutorid">
                        <input type="hidden" class="form-control" id="demotutorname"
                            name="demotutorname" disabled>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <label for="name">Subject</label>
                        {{-- <input type="hidden" id="demosubjectid" name="demosubjectid">
                        <input type="text" class="form-control" id="demosubjectname"
                            name="demosubjectname" disabled> --}}
                        <select class="form-control" id="demosubjectid" name="demosubjectid" required></select>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <label for="">Prefer Slot 1<i style="color: red;">*</i></label>
                        <input type="datetime-local" class="form-control" id="demoslotfirst"
                            name="demoslotfirst" required>

                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <label for="">Prefer Slot 2</label>
                        <input type="datetime-local" class="form-control" id="demoslotsecond"
                            name="demoslotsecond">

                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <label for="">Prefer Slot 3</label>
                        <input type="datetime-local" class="form-control" id="demoslotthird"
                            name="demoslotthird">

                    </div>

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <label for="">Message(<span><i>Optional</i></span>)</label>
                        <textarea class="form-control" id="message" name="message" style="height: 110px !important"></textarea>

                    </div>

                </div>
                <div class="mt-2">
                    <button type="submit" id="" class="btn btn-sm btn-success"
                        style="float:right ">Book Trial
                        </button>
                </div>

        </div>





    </div>






    </form>

</div>
</div>



    </div>


    <!-- End Page-content -->
    <script>
        function openDemoModal(tid, tname, sid, sname) {
            getTutorSubjects(tid)
            $('#demotutorid').val(tid)
            // $('#demotutorname').val(tname)
            // $('#demosubjectid').val(sid)
            $('#demosubjectname').val(sname)
            $('#openDemoModal').modal('show')

        }

        $(document).ready(function() {
            // Function to validate slot timings
            function validateSlotTimings() {
                var now = new Date();
                var minTime = new Date(now.getTime() + 60 * 60 * 1000); // Current time + 1 hour

                // Validate Prefer Slot 1
                setMinDate('#demoslotfirst', minTime);

                // Validate Prefer Slot 2
                setMinDate('#demoslotsecond', minTime);

                // Validate Prefer Slot 3
                setMinDate('#demoslotthird', minTime);

                return true;
            }

            // Set min date for datetime-local input
            function setMinDate(selector, minDate) {
                // Get the current date and time in the required format
                var minDateString = minDate.toISOString().slice(0, 16);

                // Set the min attribute for the specified datetime-local input
                $(selector).attr('min', minDateString);
            }

            // Call the validation function on page load
            validateSlotTimings();
        });


        function openEnrollModal(tid, tname, sid, sname, ttopics, ratehr) {
            clearselectedslots()
            $('#tutorenrollid').val(tid)
            $('#tutorenroll').val(tname)
            $('#subjectenrollid').val(sid)
            $('#subjectenroll').val(sname)
            $('#availableclassenroll').val(ttopics)
            $('#rateperhourenroll').val(ratehr)
            // $('#totalamountenroll').val(ratehr * )
            $('#openEnrollModal').modal('show')
        }

        function calculate() {
            $('#totalamountenroll').val($('#rateperhourenroll').val() * $('#requiredclassenroll').val())
        }
    </script>
    <script>
        function getTutorSubjects(id) {


            $.ajax({
                url: "{{ url('fetchtutorsubjects') }}",
                type: "POST",
                data: {
                    tutor_id: id,
                    _token: '{{ csrf_token() }}'
                },
                dataType: 'json',
                success: function(result) {
                    $('#demosubjectid').html('<option value="">-- Select Subject --</option>');
                    $.each(result.subjects, function(key, value) {
                        $("#demosubjectid").append('<option value="' + value
                            .id + '">' + value.name + '</option>');
                    });

                }

            });

        };
    </script>
    <script>
    const circularProgress = document.querySelectorAll(".circular-progress");

    Array.from(circularProgress).forEach((progressBar) => {
        const progressValue = progressBar.querySelector(".percentage");
        //   const innerCircle = progressBar.querySelector(".inner-circle");
        let startValue = 0,
            endValue = Number(progressBar.getAttribute("data-percentage")),
            speed = 50,
            progressColor = progressBar.getAttribute("data-progress-color");

        const progress = setInterval(() => {
            startValue++;
            progressValue.textContent = `${startValue}%`;
            progressValue.style.color = `${progressColor}`;

            // innerCircle.style.backgroundColor = `${progressBar.getAttribute(
            //   "data-inner-circle-color"
            // )}`;

            progressBar.style.background = `conic-gradient(${progressColor} ${
      startValue * 3.6
    }deg,${progressBar.getAttribute("data-bg-color")} 0deg)`;
            if (startValue === endValue) {
                clearInterval(progress);
            }
        }, speed);
    });


    var element1 = document.getElementById('activeTutor');
    var element2 = document.getElementById('activeSubj');

    function showAllSubjects() {
        document.getElementById('allSubjects').hidden = false;
        document.getElementById('allTutors').hidden = true;

        element1.classList.remove('active');
        element2.classList.add('active');
    }


    function showAllTutors() {
        document.getElementById('allSubjects').hidden = true;
        document.getElementById('allTutors').hidden = false;

        element1.classList.add('active');
        element2.classList.remove('active');
    }
    </script>
    <script>
    // Get the start time and calculate the remaining time
    var startDateTime = new Date("{{ $upcomingclass->start_time ?? '' }}"); // Replace with your PHP variable
    var startDateTime2 = new Date("{{ $democlass->slot_confirmed ?? '' }}"); // Replace with your PHP variable

    var currentTime = new Date();
    var timeRemaining = startDateTime - currentTime;
    var timeRemaining2 = startDateTime2 - currentTime;

    // Update the countdown timer every second
    var countdownTimer = document.getElementById("countdownTimer");
    var countdownTimer2 = document.getElementById("countdownTimer2");
    var joinClassBtn = document.getElementById("joinClassBtn");
    var joinClassBtn2 = document.getElementById("joinClassBtn2");

    function updateCountdown() {
        timeRemaining -= 1000; // Decrease by 1 second
        var hours = Math.floor((timeRemaining / 1000 / 3600) % 24);
        var minutes = Math.floor((timeRemaining / 1000 / 60) % 60);
        var seconds = Math.floor((timeRemaining / 1000) % 60);

        if (timeRemaining <= 0) {
            // Class has started, hide the countdown and enable the button
            countdownTimer.style.display = "none";
            joinClassBtn.disabled = false;
        } else {
            countdownTimer.innerText = hours + "h " + minutes + "m " + seconds + "s";
            setTimeout(updateCountdown, 1000); // Update every 1 second
        }
    }

    function updateCountdown2() {

        timeRemaining2 -= 1000; // Decrease by 1 second
        var hours = Math.floor((timeRemaining2 / 1000 / 3600) % 24);
        var minutes = Math.floor((timeRemaining2 / 1000 / 60) % 60);
        var seconds = Math.floor((timeRemaining2 / 1000) % 60);
        // alert(timeRemaining2);
        // if (timeRemaining2 <= 0) {
        // Class has started, hide the countdown and enable the button
        // countdownTimer2.style.display = "none";
        // joinClassBtn2.disabled = false;
        // } else {
        countdownTimer2.innerText = hours + "h " + minutes + "m " + seconds + "s";
        setTimeout(updateCountdown2, 1000); // Update every 1 second
        // }
    }

    updateCountdown(); // Start the countdown
    updateCountdown2(); // Start the countdown
    </script>
    <script>
    function switchmode(id) {
        if (id == 1) {
            document.getElementById('tblassignment').hidden = true;
            document.getElementById('tbltest').hidden = false;
            document.getElementById('tasslink').hidden = true;
            document.getElementById('trplink').hidden = false;
        } else {
            document.getElementById('tblassignment').hidden = false;
            document.getElementById('tbltest').hidden = true;
            document.getElementById('tasslink').hidden = false;
            document.getElementById('trplink').hidden = true;
        }
    }
    </script>
    <script>
    function testprogress(id) {
        if (id == 1) {
            document.getElementById("progressreport").hidden = true;
            document.getElementById("testreport").hidden = false;
        } else {
            document.getElementById("progressreport").hidden = false;
            document.getElementById("testreport").hidden = true;
        }
    }
    </script>
     <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
     <script>
         $(document).ready(function () {
 // Attach change event handlers to your dropdowns
 $('#subjectlistid, #gradelistid, #tminprice, #tmaxprice').on('change', function () {
     // Get form data
     var formData = $('#tutor-search').serialize();

     // Make an Ajax request to fetch updated data based on dropdown changes
     $.ajax({
         url: '{{ route("student.tutorsdashboardsearch") }}', // Replace with your actual API endpoint
         method: 'POST',
         data: formData,
         success: function (data) {
             // Update only the content of the tutorListContainer
             $('#tutor-slides').html(data.html);
         },
         error: function (error) {
             console.error('Error fetching data:', error);
         }
     });
 });
});
         </script>
    @endsection
