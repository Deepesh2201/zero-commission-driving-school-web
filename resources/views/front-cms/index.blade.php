@extends('front-cms.layouts.main')
@section('main-section')
<!-- END header -->
<section class="bannerSec">
    <div class="container-fluid">
        <div class="bannerImg ">
            <div class="bannerBGImg">
                <img class="desktopBanner11 img-fluid" src="{{ url('frontendnew/img/bg-yellowCar.png') }}" alt=""
                    width="100%">
                <!-- <img class="mobileBanner" src="{{ url('frontendnew/img/MobBan.png') }}" alt="" width="100%">
                <img class="tabBanner" src="{{ url('frontendnew/img/bannerIpad.png') }}" alt="" width="100%">
                <img class="tabBanner2" src="{{ url('frontendnew/img/ipad2.png') }}" alt="" width="100%"> -->
            </div>
            <div class="overlayMTC">
                <div class=" ml-5" style="margin-top:250px">
                    <h1 class=" mb-5">
                        <b>Zero Commission<br> Master the Roads with<br> Confidence!</b>
                    </h1>
                    <form action="{{ url('toptutorsearch') }}" method="POST">
                        @csrf

                        <div class="btn-group">
                            <select class="form-control btn-custm" name="" id="">
                                <option value="" disabled selected>Select City</option>
                                @foreach ($classes as $class)
                                    <option value="{{$class->id}}">{{$class->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="btn-group">
                        <select class="form-control btn-custm" name="" id="">
                                <option value="">Select Area</option>
                            </select>
                        </div>

                        <div class="btn-group">
                            <button type="submit" class="btn search-tutor">Search</button>


                        </div>

                </div>


                <!-- <div class="findtutor-btns">

                            <div class="drpdwnSearch">
                                <button type="submit" class="btn search-tutor">Search</button>
                            </div>
                        </div> -->
                </form>

                <!-- <img src="{{ url('frontendnew/img/car.png') }}" alt="" width="35%"> -->




            </div>
        </div>
    </div>
</section>

<section>
    <div class="noteParallex">
        <h2 class="text-white p-5 m-5">We eliminate the hassle of extra charges with our zero-commission platform, where customers only pay the trainer's rates, and trainers retain 100% of the payment. It’s a fair, straightforward model that puts value first.</h2>
    </div>
</section>
<!-- tutor section -->
<section class=" mar-top-40">
    <div class="container tutor-card padd-80">
        <h4>Meet Our Expert Instructors: Your Partners in Safe Driving</h4>
        <br>
        <div class="row">
            @foreach ($tutors->slice(0, 8) as $tutor)
            <a href="tutor-details/{{$tutor->tutor_id}}" style="color: black">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-xs-12 tutorCol">
                    <div class="tutorDetails">
                        <div class="tutorImg">
                            <img src="{{ url('images/tutors/profilepics', '/') }}{{ $tutor->profile_pic }}" width="100%"
                                alt=""
                                onerror="this.onerror=null;this.src='https://mychoicetutor.com/frontendnew/img/icons/mct-favicon.png';">
                        </div>
                        <div class="star">
                            <span>
                                <i class="fa fa-star"></i>
                                {{ $tutor->avg_rating }} ({{ $tutor->total_reviews }})
                            </span>
                            <!-- <span>${{ $tutor->rateperhour }}/h</span> -->
                        </div>
                        <a href="tutor-details/{{$tutor->tutor_id}}" style="color: black"> <span class="name">
                                {{ $tutor->name }}
                                <!-- <p>{{ $tutor->subject }}</p> -->
                            </span></a>
                        <p class="desc-tutor">{{ $tutor->headline }}</p>
                    </div>
                </div>
            </a>
            @endforeach

        </div>

    </div>
</section>
<!-- -----------testimonial---------- -->
<section class="testimonial-sec">
    <div class="container topheader">
        <h3 class="">Customer Testimonials</h3>
        <div class="row">
            @foreach ($reviews->slice(0, 4) as $review)
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-xs-12 mb-4">
                <div class="testi-card">

                    <p class="mainReview">“{{ $review->name }}”</p>
                    <p class="nameFrom">{{ $review->studentname }}</p>
                    <span class="">
                        <p>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </p>
                    </span>
                </div>
            </div>
            @endforeach

        </div>
        <div class="row mt-4">
            <div class="col-12 ">
                <div class="expMore">
                    <a href="/reviews" class="btn btn-lg">View all</a>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="noteParallex2">
        <h2 class="text-white p-5 m-5">We eliminate the hassle of extra charges with our zero-commission platform, where customers only pay the trainer's rates, and trainers retain 100% of the payment. It’s a fair, straightforward model that puts value first.</h2>
    </div>
</section>
<!-- ----------how it works----- -->
<section class="howitwork-sec">
    <div class="container topheader">
        <h3 class="">How it works</h3>
        <p class="text-center px-5 mb-5">Experience seamless learning with our online tuition app. We've simplified
            education, making
            it easy for students, parents, and tutors to connect and excel. Effortless, effective, and engaging learning
            awaits you.</p>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                <div class="how-card card1">
                    <span class="nameTo">Book Your Lesson</span>
                    <p class="mt-4 pb-5">Use our easy online booking system or call us directly to schedule your first
                        lesson at a time that suits you.</p>
                </div>
                <!-- <div class="imgNumber">
                    <img class="shaddow" src="{{ url('frontendnew/img/icons/Vector 1.png') }}" alt="">
                    <img class="numbr1" src="{{ url('frontendnew/img/icons/one.png') }}" alt="">
                </div> -->
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                <div class="how-card card2">
                    <span class="nameTo">Personalized Assessment</span>
                    <p class="mt-4 pb-5">During the first lesson, your instructor will assess your skill level and
                        tailor future lessons accordingly.</p>
                </div>
                <!-- <div class="imgNumber">
                    <img class="shaddow" src="{{ url('frontendnew/img/icons/Vector 2.png') }}" alt="">
                    <img class="numbr2" src="{{ url('frontendnew/img/icons/two.png') }}" alt="">
                </div> -->
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                <div class="how-card card3">
                    <span class="nameTo">Practice & Perfect</span>
                    <p class="mt-4 pb-5">We focus on practical driving experience in real-world situations, along with
                        test preparation.</p>
                </div>
                <!-- <div class="imgNumber">
                    <img class="shaddow" src="{{ url('frontendnew/img/icons/Vector 3.png') }}" alt="">
                    <img class="numbr3" src="{{ url('frontendnew/img/icons/three.png') }}" alt="">
                </div> -->
            </div>
        </div>
    </div>
</section>










@endsection