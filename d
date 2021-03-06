[33mcommit c27a029ca138a7d99fb899f855396590d99dcc15[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: rifky <rifkyqw@gmail.com>
Date:   Sat Mar 9 11:03:36 2019 +0700

    Project Laravel

[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..6f313c6[m
[1m--- /dev/null[m
[1m+++ b/.editorconfig[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32mroot = true[m
[32m+[m
[32m+[m[32m[*][m
[32m+[m[32mcharset = utf-8[m
[32m+[m[32mend_of_line = lf[m
[32m+[m[32minsert_final_newline = true[m
[32m+[m[32mindent_style = space[m
[32m+[m[32mindent_size = 4[m
[32m+[m[32mtrim_trailing_whitespace = true[m
[32m+[m
[32m+[m[32m[*.md][m
[32m+[m[32mtrim_trailing_whitespace = false[m
[32m+[m
[32m+[m[32m[*.yml][m
[32m+[m[32mindent_size = 2[m
[1mdiff --git a/.env.example b/.env.example[m
[1mnew file mode 100644[m
[1mindex 0000000..d058c34[m
[1m--- /dev/null[m
[1m+++ b/.env.example[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m[32mAPP_NAME=Laravel[m
[32m+[m[32mAPP_ENV=local[m
[32m+[m[32mAPP_KEY=[m
[32m+[m[32mAPP_DEBUG=true[m
[32m+[m[32mAPP_URL=http://localhost[m
[32m+[m
[32m+[m[32mLOG_CHANNEL=stack[m
[32m+[m
[32m+[m[32mDB_CONNECTION=mysql[m
[32m+[m[32mDB_HOST=127.0.0.1[m
[32m+[m[32mDB_PORT=3306[m
[32m+[m[32mDB_DATABASE=homestead[m
[32m+[m[32mDB_USERNAME=homestead[m
[32m+[m[32mDB_PASSWORD=secret[m
[32m+[m
[32m+[m[32mBROADCAST_DRIVER=log[m
[32m+[m[32mCACHE_DRIVER=file[m
[32m+[m[32mQUEUE_CONNECTION=sync[m
[32m+[m[32mSESSION_DRIVER=file[m
[32m+[m[32mSESSION_LIFETIME=120[m
[32m+[m
[32m+[m[32mREDIS_HOST=127.0.0.1[m
[32m+[m[32mREDIS_PASSWORD=null[m
[32m+[m[32mREDIS_PORT=6379[m
[32m+[m
[32m+[m[32mMAIL_DRIVER=smtp[m
[32m+[m[32mMAIL_HOST=smtp.mailtrap.io[m
[32m+[m[32mMAIL_PORT=2525[m
[32m+[m[32mMAIL_USERNAME=null[m
[32m+[m[32mMAIL_PASSWORD=null[m
[32m+[m[32mMAIL_ENCRYPTION=null[m
[32m+[m
[32m+[m[32mAWS_ACCESS_KEY_ID=[m
[32m+[m[32mAWS_SECRET_ACCESS_KEY=[m
[32m+[m[32mAWS_DEFAULT_REGION=us-east-1[m
[32m+[m[32mAWS_BUCKET=[m
[32m+[m
[32m+[m[32mPUSHER_APP_ID=[m
[32m+[m[32mPUSHER_APP_KEY=[m
[32m+[m[32mPUSHER_APP_SECRET=[m
[32m+[m[32mPUSHER_APP_CLUSTER=mt1[m
[32m+[m
[32m+[m[32mMIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"[m
[32m+[m[32mMIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"[m
[1mdiff --git a/.gitattributes b/.gitattributes[m
[1mnew file mode 100644[m
[1mindex 0000000..967315d[m
[1m--- /dev/null[m
[1m+++ b/.gitattributes[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m* text=auto[m
[32m+[m[32m*.css linguist-vendored[m
[32m+[m[32m*.scss linguist-vendored[m
[32m+[m[32m*.js linguist-vendored[m
[32m+[m[32mCHANGELOG.md export-ignore[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..59e8f45[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m/node_modules[m
[32m+[m[32m/public/hot[m
[32m+[m[32m/public/storage[m
[32m+[m[32m/storage/*.key[m
[32m+[m[32m/vendor[m
[32m+[m[32m.env[m
[32m+[m[32m.phpunit.result.cache[m
[32m+[m[32mHomestead.json[m
[32m+[m[32mHomestead.yaml[m
[32m+[m[32mnpm-debug.log[m
[32m+[m[32myarn-error.log[m
[1mdiff --git a/app/Console/Kernel.php b/app/Console/Kernel.php[m
[1mnew file mode 100644[m
[1mindex 0000000..a8c5158[m
[1m--- /dev/null[m
[1m+++ b/app/Console/Kernel.php[m
[36m@@ -0,0 +1,42 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Console;[m
[32m+[m
[32m+[m[32muse Illuminate\Console\Scheduling\Schedule;[m
[32m+[m[32muse Illuminate\Foundation\Console\Kernel as ConsoleKernel;[m
[32m+[m
[32m+[m[32mclass Kernel extends ConsoleKernel[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The Artisan commands provided by your application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $commands = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Define the application's command schedule.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function schedule(Schedule $schedule)[m
[32m+[m[32m    {[m
[32m+[m[32m        // $schedule->command('inspire')[m
[32m+[m[32m        //          ->hourly();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Register the commands for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function commands()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->load(__DIR__.'/Commands');[m
[32m+[m
[32m+[m[32m        require base_path('routes/console.php');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Exceptions/Handler.php b/app/Exceptions/Handler.php[m
[1mnew file mode 100644[m
[1mindex 0000000..043cad6[m
[1m--- /dev/null[m
[1m+++ b/app/Exceptions/Handler.php[m
[36m@@ -0,0 +1,51 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Exceptions;[m
[32m+[m
[32m+[m[32muse Exception;[m
[32m+[m[32muse Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;[m
[32m+[m
[32m+[m[32mclass Handler extends ExceptionHandler[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A list of the exception types that are not reported.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $dontReport = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A list of the inputs that are never flashed for validation exceptions.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $dontFlash = [[m
[32m+[m[32m        'password',[m
[32m+[m[32m        'password_confirmation',[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Report or log an exception.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Exception  $exception[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function report(Exception $exception)[m
[32m+[m[32m    {[m
[32m+[m[32m        parent::report($exception);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Render an exception into an HTTP response.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Http\Request  $request[m
[32m+[m[32m     * @param  \Exception  $exception[m
[32m+[m[32m     * @return \Illuminate\Http\Response[m
[32m+[m[32m     */[m
[32m+[m[32m    public function render($request, Exception $exception)[m
[32m+[m[32m    {[m
[32m+[m[32m        return parent::render($request, $exception);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/ForgotPasswordController.php b/app/Http/Controllers/Auth/ForgotPasswordController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..6a247fe[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/ForgotPasswordController.php[m
[36m@@ -0,0 +1,32 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\SendsPasswordResetEmails;[m
[32m+[m
[32m+[m[32mclass ForgotPasswordController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Password Reset Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller is responsible for handling password reset emails and[m
[32m+[m[32m    | includes a trait which assists in sending these notifications from[m
[32m+[m[32m    | your application to your users. Feel free to explore this trait.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use SendsPasswordResetEmails;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/LoginController.php b/app/Http/Controllers/Auth/LoginController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..b2ea669[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/LoginController.php[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\AuthenticatesUsers;[m
[32m+[m
[32m+[m[32mclass LoginController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Login Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller handles authenticating users for the application and[m
[32m+[m[32m    | redirecting them to your home screen. The controller uses a trait[m
[32m+[m[32m    | to conveniently provide its functionality to your applications.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use AuthenticatesUsers;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after login.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = '/home';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest')->except('logout');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/RegisterController.php b/app/Http/Controllers/Auth/RegisterController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..85b9057[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/RegisterController.php[m
[36m@@ -0,0 +1,72 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\User;[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Support\Facades\Hash;[m
[32m+[m[32muse Illuminate\Support\Facades\Validator;[m
[32m+[m[32muse Illuminate\Foundation\Auth\RegistersUsers;[m
[32m+[m
[32m+[m[32mclass RegisterController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Register Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller handles the registration of new users as well as their[m
[32m+[m[32m    | validation and creation. By default this controller uses a trait to[m
[32m+[m[32m    | provide this functionality without requiring any additional code.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use RegistersUsers;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after registration.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = '/home';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest');[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Get a validator for an incoming registration request.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  array  $data[m
[32m+[m[32m     * @return \Illuminate\Contracts\Validation\Validator[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function validator(array $data)[m
[32m+[m[32m    {[m
[32m+[m[32m        return Validator::make($data, [[m
[32m+[m[32m            'name' => ['required', 'string', 'max:255'],[m
[32m+[m[32m            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],[m
[32m+[m[32m            'password' => ['required', 'string', 'min:8', 'confirmed'],[m
[32m+[m[32m        ]);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new user instance after a valid registration.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  array  $data[m
[32m+[m[32m     * @return \App\User[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function create(array $data)[m
[32m+[m[32m    {[m
[32m+[m[32m        return User::create([[m
[32m+[m[32m            'name' => $data['name'],[m
[32m+[m[32m            'email' => $data['email'],[m
[32m+[m[32m            'password' => Hash::make($data['password']),[m
[32m+[m[32m        ]);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/ResetPasswordController.php b/app/Http/Controllers/Auth/ResetPasswordController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..cf726ee[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/ResetPasswordController.php[m
[36m@@ -0,0 +1,39 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\ResetsPasswords;[m
[32m+[m
[32m+[m[32mclass ResetPasswordController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Password Reset Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller is responsible for handling password reset requests[m
[32m+[m[32m    | and uses a simple trait to include this behavior. You're free to[m
[32m+[m[32m    | explore this trait and override any methods you wish to tweak.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use ResetsPasswords;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after resetting their password.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = '/home';[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/VerificationController.php b/app/Http/Controllers/Auth/VerificationController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..23a43a8[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/VerificationController.php[m
[36m@@ -0,0 +1,41 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\VerifiesEmails;[m
[32m+[m
[32m+[m[32mclass VerificationController