{OVERALL_HEADER}
<!-- Account-setting-page -->
<section id="main" class="clearfix  ad-profile-page">
    <div class="container">
        <div class="breadcrumb-section">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li><a href="{LINK_INDEX}"><i class="fa fa-home"></i> {LANG_HOME}</a></li>
                <li class="active">{LANG_ACCOUNT_SETTING}</li>
                <div class="pull-right back-result"><a href="{LINK_LISTING}"><i class="fa fa-angle-double-left"></i>{LANG_BACK_RESULT}</a></div>
            </ol>
            <!-- breadcrumb -->
        </div>
        <!-- Main Content -->
        <div class="row">
            <!-- Page-Sidebar -->
            <aside class="col-sm-3 hidden-xs hidden-sm">
                <div class="section">
                    <div class="user-panel-sidebar">
                        <div class="collapse-box">
                            <h5 class="collapse-title no-border">{LANG_MY_CLASSIFIED} <a class="pull-right" data-toggle="collapse" href="#MyClassified"><i class="fa fa-angle-down"></i></a></h5>
                            <div id="MyClassified" class="panel-collapse collapse in">
                                <ul class="acc-list">
                                    <li><a href="{LINK_DASHBOARD}" class="waves-effect"><i class="fa fa-home"></i>{LANG_DASHBOARD} </a></li>
                                    <li><a href="{LINK_PROFILE}/{USERNAME}" class="waves-effect"><i class="fa fa-user"></i> {LANG_PROFILE_PUBLIC}</a></li>
                                    <li><a href="{LINK_POST-AD}" class="waves-effect"><i class="fa fa-pencil"></i>{LANG_POST_AD}</a></li>
                                    <li><a href="{LINK_MEMBERSHIP}" class="waves-effect"><i class="fa fa-shopping-bag"></i> {LANG_MEMBERSHIP} </a></li>
                                    <li><a href="{LINK_MESSAGE}" class="waves-effect"><i class="fa fa-envelope"></i> {LANG_MESSAGE} </a></li>
                                </ul>
                            </div> 
                        </div>
                        <div class="collapse-box">
                            <h5 class="collapse-title"> {LANG_MY_ADS} <a class="pull-right" data-toggle="collapse" href="#MyAds"><i class="fa fa-angle-down"></i></a></h5>
                            <div id="MyAds" class="panel-collapse collapse in">
                                <ul class="acc-list">
                                    <li><a href="{LINK_MYADS}" class="waves-effect"><i class="fa fa-book"></i>{LANG_MY_ADS} <span class="badge">{MYADS}</span> </a></li>
                                    <li><a href="{LINK_FAVADS}" class="waves-effect"><i class="fa fa-heart"></i>{LANG_FAVOURITE_ADS} <span class="badge">{FAVORITEADS}</span> </a></li>
                                    <li><a href="{LINK_PENDINGADS}" class="waves-effect"><i class="fa fa-info-circle"></i> {LANG_PENDING_ADS}<span class="badge">{PENDINGADS}</span></a></li>
                                    <li><a href="{LINK_HIDDENADS}" class="waves-effect"><i class="fa fa-eye-slash"></i> {LANG_HIDDEN_ADS} <span class="badge">{HIDDENADS}</span></a></li>
                                    <li><a href="{LINK_EXPIREADS}" class="waves-effect"><i class="fa fa-calendar-times-o"></i> {LANG_EXPIRE_ADS} <span class="badge">{EXPIREADS}</span></a>
                                    <li><a href="{LINK_RESUBMITADS}" class="waves-effect"><i class="fa fa-briefcase"></i> {LANG_RESUBMITED_ADS} <span class="badge">{RESUBMITADS}</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="collapse-box">
                            <h5 class="collapse-title no-border"> {LANG_MY_ACCOUNT} <a class="pull-right" data-toggle="collapse" href="#account"><i class="fa fa-angle-down"></i></a></h5>
                            <div id="account" class="panel-collapse collapse in">
                                <ul class="acc-list">
                                    <li><a href="{LINK_TRANSACTION}" class="waves-effect"><i class="fa fa-money"></i> {LANG_TRANSACTION}</a></li>
                                    <li class="active"><a href="{LINK_ACCOUNT_SETTING}" class="waves-effect"><i class="fa fa-cog"></i> {LANG_ACCOUNT_SETTING} </a></li>
                                    <li><a href="{LINK_LOGOUT}" class="waves-effect"><i class="fa fa-unlock"></i>{LANG_LOGOUT} </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>
            <!-- # End Page-Sidebar -->
            <!-- Page-Content -->
            <div class="col-sm-9 page-content">
                <div class="panel-user-details">
                    <!-- profile-details -->
                    <div class="user-details section">
                        <div class="user-img"><img src="{SITE_URL}storage/profile/small_{AUTHORIMG}" alt="{USERNAME}" class="img-responsive"></div>
                        <div class="user-admin">
                            <h3><a href="#">{LANG_HELLO} {USERNAME}</a></h3>
                            <small>{LANG_YOU_LOGIN}: {LASTACTIVE}</small>
                        </div>
                        <div class="user-ads-details">
                            <div class="my-quickad">
                                <h3><a href="{LINK_MYADS}">{MYADS}</a></h3>
                                <small>{LANG_MY_ADS}</small>
                            </div>
                            <div class="favourites">
                                <h3><a href="{LINK_FAVADS}">{FAVORITEADS}</a></h3>
                                <small>{LANG_FAVOURITES}</small>
                            </div>
                        </div>
                    </div>
                    <!-- profile-details -->
                    <!-- My Details -->
                    <div class="section my-details">
                        <div class="section-title">
                            <h2>{LANG_CHANGE_PASS}</h2>
                        </div>
                        <form class="row" method="post">
                            <div class="section-body">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">{LANG_EMAIL}<span class="required">*</span></label>
                                    <div class="col-sm-9">
                                        <input class="form-control border-form" type="text" name="email" id="email" value="{EMAIL_FIELD}" onBlur="checkAvailabilityEmail()">
                                        <span id="email-availability-status">IF("{EMAIL_ERROR}"!=""){ {EMAIL_ERROR} {:IF}</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">{LANG_USERNAME}<span class="required">*</span></label>

                                    <div class="col-sm-9">
                                        <input class="form-control border-form" type="text" name="username" id="username" value="{USERNAME_FIELD}" onBlur="checkAvailabilityUsername()">
                                        <span id="user-availability-status">IF("{USERNAME_ERROR}"!=""){ {USERNAME_ERROR} {:IF}</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">{LANG_PASSWORD}<span class="required">*</span></label>
                                    <div class="col-sm-9">
                                        <input class="form-control border-form" type="text" name="password" id="password" onkeyup="checkAvailabilityPassword()" autocomplete="off">
                                        <span id="password-availability-status">IF("{PASSWORD_ERROR}"!=""){ {PASSWORD_ERROR} {:IF}</span>
                                    </div>
                                </div>
                                <section class="hidden">
                                    <div class="section-title">
                                        <h2>{LANG_PREFERENCES_SETTING}</h2>
                                    </div>
                                    <div class="checkbox">
                                        <label><input type="checkbox" name="logged">{LANG_COMMENTS_ENABLED} </label>
                                        <label><input type="checkbox" name="receive">{LANG_RECEIVE_NEWSLETTER}.</label>
                                    </div>
                                    <!--end row-->
                                </section>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <button type="submit" class="btn btn-outline" name="submit">
                                            {LANG_UPDATE_ACCOUNT}
                                        </button>
                                        <button type="reset" class="btn btn-outline cancel"> {LANG_CANCEL}</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- My Details -->
                </div>
                <!-- user-pro-edit -->
            </div>
            <!-- # End Page-Content -->
        </div>
        <!-- row -->
    </div>
    <!-- container -->
</section>
<!-- Account-setting-page -->
<script>
    var error = "";
    function checkAvailabilityUsername() {
        var $item = $("#Rusername").closest('.form-group');
        $("#loaderIcon").show();
        jQuery.ajax({
            url: "check_availability.php",
            data: 'username=' + $("#Rusername").val(),
            type: "POST",
            success: function (data) {
                if (data != "success") {
                    error = 1;
                    $item.removeClass('has-success');
                    $("#user-availability-status").html(data);
                    $item.addClass('has-error');
                }
                else {
                    error = 0;
                    $item.removeClass('has-error');
                    $("#user-availability-status").html("");
                    $item.addClass('has-success');
                }
                $("#loaderIcon").hide();
            },
            error: function () {
            }
        });
    }
    function checkAvailabilityEmail() {
        $("#loaderIcon").show();
        jQuery.ajax({
            url: "check_availability.php",
            data: 'email=' + $("#email").val(),
            type: "POST",
            success: function (data) {
                if (data != "success") {
                    error = 1;
                    $("#email").removeClass('has-success');
                    $("#email-availability-status").html(data);
                    $("#email").addClass('has-error mar-zero');
                }
                else {
                    error = 0;
                    $("#email").removeClass('has-error mar-zero');
                    $("#email-availability-status").html("");
                    $("#email").addClass('has-success');
                }
                $("#loaderIcon").hide();
            },
            error: function () {
            }
        });
    }
    function checkAvailabilityPassword() {
        var length = $('#password').val().length;
        if (length != 0) {
            var PASSLENG = "{LANG_PASSLENG}";
            if (length < 5 || length > 21) {
                $("#password").removeClass('has-success');
                $("#password-availability-status").html("<span class='status-not-available'>" + PASSLENG + "</span>");
                $("#password").addClass('has-error mar-zero');
            }
            else {
                $("#password").removeClass('has-error');
                $("#password-availability-status").html("<span class='status-available'>Leave blank if don't want to change password.</span>");
                $("#password").addClass('has-success mar-zero');
            }
        }

    }
    $(window).load(function () {
        $('#password').val("");
    });
</script>
{OVERALL_FOOTER} 