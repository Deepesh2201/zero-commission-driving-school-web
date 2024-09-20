<style>
    
    .active-btn{
      background-color: #000;
      accent-color: #fff;
      
      
    }
  
    .active-btn span{
      color: #fff;
    }
  
    .radioLogin{
      border-radius: 8px;
      padding: 10px;
  
      accent-color: #000;
    }
  </style>
  
  <!-- Modal -->
  <div class="modal fade loginModel" id="loginPopup" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
      aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered " role="document">
          <div class="modal-content loginModel">
              <div class="modal-header" style="border: none;">
  
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div>
              <h3 class="text-center">Login</h3>
  
              <form class="loginForm" action="{{ url('/student-login') }}" method="GET">
                @csrf
                  <div class="form-group">
                      @if (Session::has('success'))
                                  <div class="alert alert-success">{{ Session::get('success') }}</div>
                                  <input type="hidden" id="showloginpopup" name="showloginpopup" value="0">
                              @endif
                              @if (Session::has('fail'))
                              <input type="hidden" id="showloginpopup" name="showloginpopup" value="1">
                                  <div class="alert alert-danger">{{ Session::get('fail') }}</div>
                              @endif
                      <label for="number">Mobile Number</label>
                      <input type="number" class="form-control" id="username" name="username" aria-describedby=""
                          placeholder="Your Number" required>
                  </div>
                  <span class="text-danger  login-errorMessage">
                      @error('username')
                          {{ $message }}
                      @enderror
                  </span>
                  <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" class="form-control" id="password" name="password" aria-describedby=""
                          placeholder="Password" required>
                  </div>
                  <span class="text-danger login-errorMessage">
                      @error('password')
                          {{ $message }}
                      @enderror
                  </span>
                  <p class="mt-3">Login as</p>
  
                  <div class="radioBtn">
                      <div class="row">
                          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                              <div class="radioLogin studentPopup  active-btn">
                                  <input type="radio" value="student" name="loginAs" id="studentPopup" checked>
                                  <span>Student</span>
                              </div>
                          </div>
                          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                              <div class="radioLogin tutorPopup">
                                  <input type="radio" value="tutor" name="loginAs" id="tutorPopup">
                                  <span>Instructor</span>
                              </div>
                          </div>
                          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" hidden>
                              <div class="radioLogin parentsPopup">
                                  <input type="radio" value="parent" name="loginAs" id="parentsPopup">
                                  <span>Parents</span>
                              </div>
                          </div>
                      </div>
  
                      <span class="text-danger login-errorMessage">
                          @error('loginAs')
                              {{ $message }}
                          @enderror
                      </span>
                  </div>
  
                  <hr>
                  <button type="submit" class="btn brand-bg-Color mb-3">Login</button>
  
                  <br>
                  {{-- <a href="#">
                      <div class="googleLogin">
  
                          <img src="{{ url('frontendnew/img/icons/google-logo.png') }}" alt=""><span>Sign in with
                              Google</span>
  
                      </div>
  
                  </a> --}}
  
                  <div class="forgotPwd mt-3">
                      <p> Don't have an account? <a href="{{ '/student/register' }}" class="register">Register</a></p>
                      <a href="#">Forgot password?</a>
                  </div>
  
  
  
  
  
  
  
              </form>
          </div>
      </div>
  </div>
  <!-- Modal -->
  <div class="modal fade" id="makearequest" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Make a Request</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="requestForm" action="{{route('makearequest')}}" method="POST">
                @csrf
            <div class="modal-body">
                    <!-- Full Name -->
                    <div class="form-group">
                        <label for="fullName">Full Name <span style="color: red">*</span></label>
                        <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter your full name" required>
                    </div>
                    <!-- Mobile -->
                    <div class="form-group">
                        <label for="mobile">Mobile <span style="color: red">*</span></label>
                        <input type="mobile" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile" required>
                    </div>
                    <!-- Email -->
                    <div class="form-group">
                        <label for="email">Email <span style="color: red">*</span></label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>

                    <!-- City and Location in Single Row -->
                    <div class="row">
                        <div class="col-md-6">
                            <!-- City -->
                            <div class="form-group">
                                <label for="city">City <span style="color: red">*</span></label>
                                <select class="form-control" id="city" name="city" required>
                                    <option value="" disabled selected>Select your city</option>
                                    {{-- @foreach ($classes as $class)
                                        <option value="{{ $class->id }}">{{ $class->name }}</option>
                                    @endforeach --}}
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <!-- Location -->
                            <div class="form-group">
                                <label for="location">Location <span style="color: red">*</span></label>
                                <select class="form-control" id="location" name="location" required>
                                    <option value="" disabled selected>Select your location</option>
                                    {{-- @foreach ($subjects as $subject)
                                        <option value="{{ $subject->id }}">{{ $subject->name }}</option>
                                    @endforeach --}}
                                </select>
                            </div>
                        </div>
                    </div>

                    <!-- No of Classes and Start Date in Single Row -->
                    <div class="row">
                        <div class="col-md-6">
                            <!-- No of Classes -->
                            <div class="form-group">
                                <label for="noOfClasses">No of Classes <span style="color: red">*</span></label>
                                <input type="number" class="form-control" id="noOfClasses" name="noOfClasses" placeholder="Enter number of classes" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <!-- Start Date -->
                            <div class="form-group">
                                <label for="startDate">Start Date <span style="color: red">*</span></label>
                                <input type="date" class="form-control" id="startDate" name="startDate" required>
                            </div>
                        </div>
                    </div>
               
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-success" form="requestForm">Submit</button>
            </div>
        </form>
        </div>
    </div>
</div>





<script>
  function makearequest() {
      $('#makearequest').modal('show');
  }
</script>
  
  <script>
                      document.addEventListener('DOMContentLoaded', () => {
                          const studentRadio = document.getElementById('student');
                          const tutorRadio = document.getElementById('tutor');
                          const parentsRadio = document.getElementById('parents');
                          const studentDiv = document.querySelector('.student');
                          const tutorDiv = document.querySelector('.tutor');
                          const parentsDiv = document.querySelector('.parents');
  
                         
  
                          function switchActiveClass() {
                              studentDiv.classList.remove('active-btn');
                              tutorDiv.classList.remove('active-btn');
                              parentsDiv.classList.remove('active-btn');
  
                             
  
                              if (studentRadio.checked) {
                                  studentDiv.classList.add('active-btn');
                              } else if (tutorRadio.checked) {
                                  tutorDiv.classList.add('active-btn');
                              } else if (parentsRadio.checked) {
                                  parentsDiv.classList.add('active-btn');
                              }
  
  
  
                             
                          }
  
                          studentRadio.addEventListener('change', switchActiveClass);
                          tutorRadio.addEventListener('change', switchActiveClass);
                          parentsRadio.addEventListener('change', switchActiveClass);
  
                         
                      });
  
  
                      document.addEventListener('DOMContentLoaded', () => {
  
                          const studentRadioPopup = document.getElementById('studentPopup');
                          const tutorRadioPopup = document.getElementById('tutorPopup');
                          const parentsRadioPopup = document.getElementById('parentsPopup');
                          const studentDivPopup = document.querySelector('.studentPopup');
                          const tutorDivPopup = document.querySelector('.tutorPopup');
                          const parentsDivPopup = document.querySelector('.parentsPopup');
  
  
                          function switchActiveClassNew() {
                          studentDivPopup .classList.remove('active-btn');
                          tutorDivPopup .classList.remove('active-btn');
                          parentsDivPopup .classList.remove('active-btn');
  
                          if (studentRadioPopup.checked) {
                              studentDivPopup .classList.add('active-btn');
                          } else if (tutorRadioPopup.checked) {
                              tutorDivPopup .classList.add('active-btn');
                          } else if (parentsRadioPopup.checked) {
                              parentsDivPopup .classList.add('active-btn');
                          }
  
                      }
                      studentRadioPopup.addEventListener('change', switchActiveClassNew);
                      tutorRadioPopup.addEventListener('change', switchActiveClassNew);
                      parentsRadioPopup.addEventListener('change', switchActiveClassNew);
  
                      });
  
  
                     
  
  
  
  
  
                  </script>
  
  
  
  <script>
      $('#myModal').on('shown.bs.modal', function() {
          $('#myInput').trigger('focus')
      })
  </script>
  <script>
      $(document).ready(function(){
          if(document.getElementById('showloginpopup').value == 1){
  
              $("#loginPopup").modal('show');
          }
      });
      </script>
  
  
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <a href="https://api.whatsapp.com/send?phone=+447879175585&text=Hello." class="float" target="_blank">
  <i class="fa fa-whatsapp my-float"></i>
  </a>
  
  
  
  
  
  
  
  <footer class="footerArea mt-5">
      <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                        <div class="social my-5">
                            <img src="{{ url('frontendnew/img/logo.png') }}" width="160px" alt="">
                        </div>
                        <p>
                        Safe and personalized driving lessons for all skill levels. Flexible scheduling, professional instructors.
                        </p>
                </div>
              <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                  <h5 class="mb-4">Quick Links</h5>
                  <ul>
                      <a href="/aboutus"><li>About us</li></a>
                      <a href="/aboutus"><li>Who we are</li></a>
                      <a href="/aboutus"><li>Contact Us</li></a>
                      <a href="/privacypolicy"><li>Privacy Policy</li></a>
                      <a href="/termscondition"><li>Terms and Conditions</li></a>
                      <a href="/refundpolicy"><li>Refund Policy</li></a>
  
                  </ul>
              </div>
  
              <!-- <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                  <h5 class="mb-4">Popular Subjects</h5>
                  <ul>
                      <li>Psychology</li>
                      <li>Biology</li>
                      <li>Business Studies</li>
                      <li>Chemistry</li>
                      <li>Computer Science</li>
                      <li>English Language</li>
                      <li>French</li>
                      <li>German</li>
                      <li>History</li>
                      <li>Mathematics</li>
                      <li>Physics</li>
                  </ul>
              </div> -->
  
  
              <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                  <h5 class="mb-4">Follow us</h5>
                  <ul class="contactDetail">
                      <li><img src="{{ url('frontendnew/img/icons/Group.png') }}" alt="">+44 7879 175585</li>
                      <li><img src="{{ url('frontendnew/img/icons/Vector.png') }}" alt="">+44 7879 175585</li>
                      <li><img src="{{ url('frontendnew/img/icons/email.png') }}" alt="">info@121drivingschool.com
                      </li>
  
                  </ul>
  
                  <div class="social">
                      <a href="#"><img src="{{ url('frontendnew/img/icons/facebook.png') }}" alt=""></a>
                      <a href="#"><img src="{{ url('frontendnew/img/icons/OUTLINE_copy_2.png') }}"
                              alt=""></a>
                      <a href="#"><img src="{{ url('frontendnew/img/icons/Group 797.png') }}" alt=""></a>
  
                  </div>
              </div>
  
              <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
              <h5 class="mb-4">Map</h5>
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317716.60645421536!2d-0.43124416199480503!3d51.52860701284128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C%20UK!5e0!3m2!1sen!2sin!4v1726034271627!5m2!1sen!2sin" width="100%" height="200px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  
                 
              </div>
          </div>
      </div>
      <div class="footer-bottom">
          <p>Copyright © 2024 121DrivingSchool. All rights reserved. &nbsp; | &nbsp; Proudly powered by <a href="https://thenexteck.com/" target="_blank" style="color: white">Nexteck</p>
      </div>
  </footer>
  
  <script src="{{ url('frontendnew/js/jquery-3.3.1.min.js') }}"></script>
  <script src="{{ url('frontendnew/js/popper.min.js') }}"></script>
  <script src="{{ url('frontendnew/js/bootstrap.min.js') }}"></script>
  <script src="{{ url('frontendnew/js/jquery.sticky.js') }}"></script>
  <script src="{{ url('frontendnew/js/main.js') }}"></script>
  </body>
  
  </html>
  