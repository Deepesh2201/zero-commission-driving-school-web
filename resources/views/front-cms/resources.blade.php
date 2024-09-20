@extends('front-cms.layouts.main')
@section('main-section')
    <!-- END header -->
    <section class="bannerSec tutBann">
        <div class="container-fluid">
            <div class="tutorHeader">
            <h1 class="mb-3">
                    Contact us
                </h1>

                <div class="text-center">
                    <p class="charcol">We're Here to Help You Start Your Driving Journey</p>

                </div>


            </div>
        </div>

    </section>
    <section class="tutor-section">
        <div class="container ">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <img src="{{url('frontendnew/img/carDrive.jpg')}}" width="100%" alt="">
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <form action="{{url('/student/register')}}" method="POST" class="">
                            @csrf
                            <div class="form-group">
                                <label for="name">Full Name:<span class="reqrd">*</span></label>
                                <input type="text" class="form-control" id="name" name="name" aria-describedby=""
                                    placeholder="Your name" value="{{old('name')}}">
                                    <span class="text-danger error-message">
                                        @error('name')
                                            {{ $message }}
                                        @enderror
                                    </span>
                            </div>


                            <div class="form-group">
                                <label for="email">Email:<span class="reqrd">*</span></label>
                                <input type="email" class="form-control" id="email" name="email" aria-describedby=""
                                    placeholder="Your email address"value="{{old('email')}}">
                                    <span class="text-danger error-message">
                                        @error('email')
                                            {{ $message }}
                                        @enderror
                                    </span>
                            </div>

                            <div class="form-group">
                                <label for="number">Mobile:<span class="reqrd">*</span></label>
                                <input type="text" class="form-control" id="mobile" name="mobile" aria-describedby=""
                                    placeholder="Your mobile number" value="{{old('mobile')}}" maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '')">
                                <span class="text-danger error-message">
                                    @error('mobile')
                                        {{ $message }}
                                    @enderror
                                </span>
                            </div>

                            <div class="form-group">
                                <label for="message">Message:<span class="reqrd">*</span></label>
                                <textarea type="text" class="form-control" id="message" name="message" aria-describedby=""
                                    placeholder="Message..." value="{{old('message')}}">
                                    
                                </textarea>
                               
                            </div>

                            

                            


                           


                            <div class="row mt-4">
                                <div class="col-12 ">
                                    <div class="regSub" style="float:right">
                                        <button type="submit" class="btn btn-lg">Send</button>
                                    </div>
                                </div>
                            </div>


                          

                            





                        </form>
                </div>
            </div>
        </div>
    </section>  
   
@endsection
