//
//  XueXi.h
//  Father
//
//  Created by wanglin on 15-4-22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XueXi : NSObject
/*
 webView
 一、简单介绍
 
 1.简单说明
 
 UIWebView是iOS内置的浏览器控件
 系统自带的Safari浏览器就是通过UIWebView实现的
 
 UIWebView不但能加载远程的网页资源,还能加载绝⼤部分的常见文件 html\htm pdf、doc、ppt、txt  mp4 ......
 
 2.UIWebView常⽤的加载资源的方法
 
 - (void)loadRequest:(NSURLRequest *)request;
 
 3.常用的属性和方法
 
 重新加载(刷新)  - (void)reload;
 
 停⽌止加载     - (void)stopLoading;
 
 回退     - (void)goBack;
 
 前进    - (void)goForward;
 
 需要进⾏检测的数据类型   @property(nonatomic) UIDataDetectorTypes dataDetectorTypes
 
 是否能回退 @property(nonatomic,readonly,getter=canGoBack) BOOL canGoBack;
 
 是否能前进 @property(nonatomic,readonly,getter=canGoForward) BOOL canGoForward;
 
 是否正在加载中  @property(nonatomic,readonly,getter=isLoading) BOOL loading;
 
 是否伸缩内容至适应屏幕当前尺寸 @property(nonatomic) BOOL scalesPageToFit;
 
 
 
 4.监听UIWebView的加载过程
 
 成为UIWebView的代理,遵守UIWebViewDelegate协议,就能监听UIWebView的加载过程
 
 开始发送请求(加载数据)时调用这个方法
 
 - (void)webViewDidStartLoad:(UIWebView *)webView;
 
 请求完毕(加载数据完毕)时调⽤这个方法
 
 - (void)webViewDidFinishLoad:(UIWebView *)webView;
 
 请求错误时调用这个方法
 
 - (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
 
 
 
 5.监听UIWebView的加载过程
 
 UIWebView在发送请求之前,都会调⽤用这个⽅方法,如果返回NO,代表停⽌止加载 请求,返回YES,代表允许加载请求
 
 - (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
 

 
 
 C语言 函数
 
 1.概念
 
 a.函数就是一系列语句的组合，函数名、返回值、形参、函数体组成。
 
 b.函数在使用步骤分为三个步骤：声明、定义、调用。
 
 2.语法格式
 
 返回值类型 函数名(参数){
 
 …(函数体)(返回值);
 
 }
 
 3.函数声明
 
 a.正常来讲，函数在使用前一定要声明
 
 b.由于编译器从上到下，所以下面的代码调用上面的函数，不需要声明，但上面的代码调用下面的函数，就必须声明。
 
 c.声明的格式，去掉函数体部分，保留 返回值类型 函数名(参数);(函数的原型)
 
 d.如果返回值类型不是int的话，最好使用函数声明(函数原型)。
 
 e.void f();
 
 函数声明，可以省略参数，省略参数代表可以接受任意参数，如果不需要参数，使用void关键字。void f(void);
 
 4.函数调用
 
 在准备使用函数的时候，执行(函数名+参数)，就调用了函数体的语句。
 
 a.有参的函数在定义时使用的参数叫形参，当调用此函数时需要传入的参数就是实参。
 
 b.调用函数时，需要函数的执行结果，这时就需要返回值类型标识结果的类型，函数体内部需要使用return关键字，标识具体的函数结果(返回值)。
 
 c.如果函数有返回值，当调用函数时，通常会使用变量接收返回值。
 
 5.函数使用时注意的问题
 
 a.如果函数执行后，不需要结果，就定义函数的返回值类型void(空)，也就不需要return关键字。
 
 b.如果执行函数需要参照一些特定的条件，就可以使用参数，如果有多个参数，之间用分隔符","。
 
 
 
 c.使用参数的时候，相当于实参传递值给形参。
 
 
 
 练习：有两个数i=2，j=3 使用函数调换两个数的值。在调换函数中查看i与j的值，在main函数查看调换后的值。
 
 d.形参是数组时，采用两个参数，第一个参数是数组的长度，第二个参数是不指定数组长度的数组（数组名称）
 
 e.return与exit(0) 两个关键字
 
 1)exit(0)是一个函数，用于退出整个程序 需要包含一个stdlib.h
 
 2)return 可以做为返回值的关键字，终止当前函数的继续执行。
 
 f.递归
 
 1)递归算法 (阶乘)
 
 递归的过程，一般通过函数或子函数实现，递归方法：在函数或子函数内部，直接或间接调用自己的算法。
 
 2)递环归有可能造成死循或算法的复杂化。(运行次数变多)。因此使用递归时，必须注意：
 
 <1>必须有退出条件
 
 <2>必须保证递归后，算法简化
 
 3)递归的格式
 
 int f1(int n){
 
 printf("f1(int n) %d\n",n);
 
 if (n==1) {
 
 return 1;
 
 }
 
 return n*f1(n-1);
 
 }
 
 
 
 饮料：可乐 12元 第二杯半价
 //  	只买一杯付多少钱？如果买六杯呢？
 //
 //    int number;
 //    int cup1=12,cup2=6;
 //    printf("现在买一杯饮料，第二杯半价呦!\n");
 //    printf("您需要多少杯饮料呢?\n");
 //    scanf("%d",&number);
 //    printf("您好，%d杯请付%d元\n",number,(number/2)*cup2+(number/2+number%2)*cup1);
 
 

 IOS 获取设备信息总结
 
 
 
 1、获取设备的信息
 
 UIDevice *device = [[UIDevice alloc] int];
 NSString *name = device.name;       //获取设备所有者的名称
 NSString *model = device.name;      //获取设备的类别
 NSString *type = device.localizedModel; //获取本地化版本
 NSString *systemName = device.systemName;   //获取当前运行的系统
 NSString *systemVersion = device.systemVersion;//获取当前系统的版本
 
 2、获取设备的唯一标示符
 NSString *identifier = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
 
 3、为系统创建一个随机的标示符
 
 (NSString*) createUUID
 {
 NSString *id = [[NSUserDefaults standardUserDefaults] objectForKey:@"UUID"];    //获取标识为"UUID"的值
 if(id == nil)
 {
 if([[[UIDevice currentDevice] systemVersion] floatValue] > 6.0)
 {
 NSString *identifierNumber = [[NSUUID UUID] UUIDString];                //ios 6.0 之后可以使用的api
 [[NSUserDefaults standardUserDefaults] setObject:identifierNumber forKey:@"UUID"];  //保存为UUID
 [[NSUserDefaults standardUserDefaults] synchronize];
 }
 else{
 CFUUIDRef uuid = CFUUIDCreate(NULL);
 CFStringRef uuidString = CFUUIDCreateString(NULL, uuid);                    //ios6.0之前使用的api
 NSString *identifierNumber = [NSString stringWithFormat:@"%@", uuidString];
 [[NSUserDefaults standardUserDefaults] setObject:identifierNumber forKey:@"UUID"];
 [[NSUserDefaults standardUserDefaults] synchronize];
 CFRelease(uuidString);
 CFRelease(uuid);
 }
 return [[NSUserDefaults standardUserDefaults] objectForKey@"UUID"];
 }
 return id;
 }
 
 4、获取当前屏幕分辨率的信息
 
 CGRect rect = [[UIScreen mainScreen] bounds];
 CGFloat scale = [[UIScreen mainScreen].scale];
 CGFloat width = rect.size.width * scale;
 CGFloat height = rect.size.height * scale;
 
 5、获取运营商的信息
 需要先导入头文件
 
 #import <CoreTelephony/CTCarrier.h>
 #import <CoreTelephony/CTTelephonyNetworkInfo.h>
 创建对象
 
 
 CCTelephonyNetworkInfo *info = [[CTTelephonyNetworkInfo alloc] init];
 
 获取运行商的名称
 
 CTCarrier *carrier = [info subscriberCellularProvider];
 NSString *mCarrier = [NSString stringWithFormat:@"%@",[carrier carrierName]];
 
 获取当前网络的类型
 ios7之后可以按照以下方式获取。方便而且类型多
 
 NSString *mConnectType = [[NSString alloc] initWithFormat:@"%@",info.currentRadioAccessTechnology];
 
 类型有以下：
 
 CTRadioAccessTechnologyGPRS         //介于2G和3G之间，也叫2.5G ,过度技术
 CTRadioAccessTechnologyEdge         //EDGE为GPRS到第三代移动通信的过渡，EDGE俗称2.75G
 CTRadioAccessTechnologyWCDMA
 CTRadioAccessTechnologyHSDPA            //亦称为3.5G(3?G)
 CTRadioAccessTechnologyHSUPA            //3G到4G的过度技术
 CTRadioAccessTechnologyCDMA1x       //3G
 CTRadioAccessTechnologyCDMAEVDORev0    //3G标准
 CTRadioAccessTechnologyCDMAEVDORevA
 CTRadioAccessTechnologyCDMAEVDORevB
 CTRadioAccessTechnologyeHRPD        //电信使用的一种3G到4G的演进技术， 3.75G
 CTRadioAccessTechnologyLTE          //接近4G
 
 ios7之前的话apple给我们提供了Reachability来获取。
 首先要导入SystemConfiguration.framework，把下载下来的Reachability.h和Reachability.m加进项目中
 
 Reachability *reach = [Reachability reachabilityWithHostName:@"www.apple.com"];
 switch([reach currentReachabilityStatus])
 {
 case NotReachable:  //没有连接上
 //do something
 break;
 case ReachableViaWiFi:  //通过wifi连接
 //do something
 break;
 case ReachableViaWWAN:  //通过GPRS连接
 //do something
 break;
 default:    <span style="white-space:pre">    </span>//未知情况
 //do something
 break;
 }
 http://blog.csdn.net/qijianli/article/details/19922653 这个博客还说了其它的方法，不过因为是调用私有API，所以没有采用。
 
 6、获取当前信号的强弱
 这个貌似没有给出官方的api，但是网上有人说可以用私有的api实现，但是通不过appStore的审核，方法如下：
 利用linux下动态库显式调用api的函数。先包含头文件 #import <dlfcn.h>
 
 (int) getSignalLevel
 {
 voidvoid *libHandle = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony",RTLD_LAZY);//获取库句柄
 int (*CTGetSignalStrength)(); //定义一个与将要获取的函数匹配的函数指针
 CTGetSignalStrength = (int(*)())dlsym(libHandle,"CTGetSignalStrength"); //获取指定名称的函数
 
 if(CTGetSignalStrength == NULL)
 return -1;
 else{
 int level = CTGetSignalStrength();
 dlclose(libHandle); //切记关闭库
 return level
 }
 }
 
 7、设备震动
 需要加入AudioToolbox framework,导入头文件 #import <AudioToolbox/AudioToolbox.h>
 在需要震动的地方添加代码：
 
 AudioServicesPlaySystemSound ( kSystemSoundID_Vibrate) ;
 但是貌似这个不支持传入震动时间和模式，自己去控制吧。
 
 
 8、获取电池的相关信息
 
 @implementation BatterMonitor
 //获取电池当前的状态，共有4种状态
 -(NSString*) getBatteryState {
 UIDevice *device = [UIDevice currentDevice];
 if (device.batteryState == UIDeviceBatteryStateUnknown) {
 return @"UnKnow";
 }else if (device.batteryState == UIDeviceBatteryStateUnplugged){
 return @"Unplugged";
 }else if (device.batteryState == UIDeviceBatteryStateCharging){
 return @"Charging";
 }else if (device.batteryState == UIDeviceBatteryStateFull){
 return @"Full";
 }
 return nil;
 }
 //获取电量的等级，0.00~1.00
 -(float) getBatteryLevel {
 return [UIDevice currentDevice].batteryLevel;
 }
 
 -(void) getBatteryInfo
 {
 NSString *state = getBatteryState();
 float level = getBatteryLevel()*100.0;
 //yourControlFunc(state, level);  //写自己要实现的获取电量信息后怎么处理
 }
 
 //打开对电量和电池状态的监控，类似定时器的功能
 -(void) didLoad
 {
 [[UIDevice currentDevice] setBatteryMonitoringEnable:YES];
 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getBatteryInfo:) name:UIDeviceBatteryStateDidChangeNotification object:nil];
 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getBatteryInfo:) name:UIDeviceBatteryLevelDidChangeNotification object:nil];
 [NSTimer scheduledTimerWithTimeInterval:0.5f target:self selector:@selector(getBatteryInfo:) userInfo:nil repeats:YES];
 }
 @end
 
 9、app中打开一个网页
 这个比较简单，直接用提供的接口openURL即可。
 
 NSString *url = @"www.apple.com"
 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
 
 10、app中打开另一个app
 打开另一个app还是可以通过openURL来实现。但是要分两种情况。第一种是启动内置的应用，一般的电话，浏览器，短信和
 
 邮件可以直接调用并添加参数，譬如
 
 
 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://10086"]];
 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto://devprograms@apple.com"]];
 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://10086"]];
 
 第二种情况是要打开自己开发的app，这种情况则要为将要打开的app注册一个URL协议。这个可以在项目的文件info.plist中注册。主要操作为：
 Step1. 右键，选择“Add Row”
 
 Step2. Key值选择“URL types”
 
 Step3. 打开“Item 0″,然后为该key增加一个URL identifier。可以是任何值，但建议用“反域名”(例如 “com.fcplayer.testHello”)。
 
 Step4. 在“Item 0”下再加一行。
 
 Step5. 选择“URL Schemes” 作为Key。
 
 Step6. 输入你的URL协议名 (例如“testHello://” 应写做“testHello”)。如果有必要，你可以在这里加入多个协议。
 
 其实在打开的时候只需要URL Schemes即可，URL identifier是可选项。如果需要传送参数，可以在URL Schemes://添加你的参数，格式和网页开发的传递参数差不多。（又或者URL Schemes://URL identifier@添加的参数）关键是要和接收参数方定义好处理的方式。然后在需要打开的地方添加代码：
 
 
 NSString *url = @"URL Schemes的路径"
 [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
 
 
 属性列表plist
 
 //1. 创建一个plist文件
 
 NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
 
 NSString *path=[paths    objectAtIndex:0];
 
 NSLog(@"path = %@",path);
 
 NSString *filename=[path stringByAppendingPathComponent:@"abbysuuya.plist"];
 
 NSFileManager* fm = [NSFileManager defaultManager];
 
 [fm createFileAtPath:filename contents:nil attributes:nil];
 
 
 
 
 
 //创建一个dic，写到plist文件里
 
 NSDictionary* ddd = [[NSDictionary alloc]initWithContentsOfFile:filename];
 
 ddd = [NSDictionary dictionaryWithObjectsAndKeys:@{@"1111":@"22222",@"1223":@"222252222",@"1423":@"222322222"},@"345",nil];
 
 [ddd writeToFile:filename atomically:YES];
 
 
 
 
 //1. 创建一个plist文件
 
 
 
 NSString *filenamew=[self applicationDocumentsDirectoryFile];
 
 NSFileManager* fm = [NSFileManager defaultManager];
 
 [fm createFileAtPath:filenamew contents:nil attributes:nil];
 
 NSLog(@"%@",filenamew);
 
 
 
 
 
 //创建一个dic，写到plist文件里
 
 NSMutableArray* dic = [NSMutableArray arrayWithObject:@{@"sina":@"1",@"163":@"2"}];
 
 [dic writeToFile:filenamew atomically:YES];
 
 NSLog(@"%@",dic);
 
 
 NSUserDefautls
 
 
 #import "ViewController.h”
 @interface ViewController ()
 @end
 @implementation ViewController
 - (void)viewDidLoad { [super viewDidLoad];
 {
 [self saveNSUserDefaults]; //调用此方法将各种数据存储到NSUserDefautls中，在下面定义
 [self readNSUserDefaults]; //调用此方法从NSUserDefautls中读取各种数据，在下面定义 }
 - (void)viewDidUnload { [txtNSString release];
 txtNSString = nil;
 [txtNSDate release];
 txtNSDate = nil;
 [txtNSArray release];
 txtNSArray = nil;
 [txtNSDictionary release];
 txtNSDictionary = nil;
 [txtInteger release]; txtInteger = nil;
 [txtFloat release]; txtFloat = nil;
 [txtDouble release];
 txtDouble = nil; [super viewDidUnload]; // Release any retained subviews of the main view.
 }
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
 }
 - (void)dealloc
 {
 [txtNSString release];
 [txtNSDate release];
 [txtNSArray release];
 [txtNSDictionary release];
 [txtInteger release];
 [txtFloat release];
 [txtDouble release];
 [super dealloc];
 } //保存数据到NSUserDefaults
 -(void)saveNSUserDefaults {
 NSString *myString = @"enuola”;
 int myInteger = 100;
 float myFloat = 50.0f;
 double myDouble = 20.0;
 NSDate *myDate = [NSDate date];
 NSArray *myArray = [NSArray arrayWithObjects:@"hello", @"world", nil];
 NSDictionary *myDictionary = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"enuo", @"20", nil] forKeys:[NSArray arrayWithObjects:@"name", @"age", nil]];
 //将上述数据全部存储到NSUserDefaults中
 NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
 //存储时，除NSNumber类型使用对应的类型意外，其他的都是使用
 setObject:forKey: [userDefaults setInteger:myInteger forKey:@"myInteger”];
 [userDefaults setFloat:myFloat forKey:@"myFloat"];
 [userDefaults setDouble:myDouble forKey:@"myDouble”];
 [userDefaults setObject:myString forKey:@"myString”];
 [userDefaults setObject:myDate forKey:@"myDate"];
 [userDefaults setObject:myArray forKey:@"myArray”];
 [userDefaults setObject:myDictionary forKey:@"myDictionary"];
 //这里建议同步存储到磁盘中，但是不是必须的 [userDefaults synchronize];
 }
 //从NSUserDefaults中读取数据
 -(void)readNSUserDefaults {
 NSUserDefaults *userDefaultes = [NSUserDefaults standardUserDefaults];
 //读取数据到各个label中
 //读取整型int类型的数据
 NSInteger myInteger = [userDefaultes integerForKey:@"myInteger"];
 txtInteger.text = [NSString stringWithFormat:@"%d",myInteger];
 //读取浮点型float类型的数据
 float myFloat = [userDefaultes floatForKey:@"myFloat"];
 txtFloat.text = [NSString stringWithFormat:@"%f",myFloat];
 //读取double类型的数据
 double myDouble = [userDefaultes doubleForKey:@"myDouble"];
 txtDouble.text = [NSString stringWithFormat:@"%f",myDouble];
 //读取NSString类型的数据
 NSString *myString = [userDefaultes stringForKey:@"myString”];
 txtNSString.text = myString;
 //读取NSDate日期类型的数据
 NSDate *myDate = [userDefaultes valueForKey:@"myDate"];
 NSDateFormatter *df = [[NSDateFormatter alloc] init];
 [df setDateFormat:@"yyyy-MM-dd HH:mm:ss”];
 txtNSDate.text = [NSString stringWithFormat:@"%@",[df stringFromDate:myDate]];
 //读取数组NSArray类型的数据
 NSArray *myArray = [userDefaultes arrayForKey:@"myArray”];
 NSString *myArrayString = [[NSString alloc] init];
 for(NSString *str in myArray)
 {
 NSLog(@"str= %@",str);
 myArrayString = [NSString stringWithFormat:@"%@ %@", myArrayString, str];
 [myArrayString stringByAppendingString:str];
 // [myArrayString stringByAppendingFormat:@"%@",str];
 NSLog(@"myArrayString=%@",myArrayString);
 }
 txtNSArray.text = myArrayString;
 //读取字典类型NSDictionary类型的数据
 NSDictionary *myDictionary = [userDefaultes dictionaryForKey:@"myDictionary"];
 NSString *myDicString = [NSString stringWithFormat:@"name:%@, age:%d",[myDictionary valueForKey:@"name"], [[myDictionary valueForKey:@"age"] integerValue]];
 txtNSDictionary.text = myDicString;
 }
 @end
 
 NSUserDefaults要点：
 1）NSUserDefaults非常好用，并不需要用户在程序中设置NSUserDefaults的全局变量，需要在哪里使用NSUserDefaults的数据，那么就在哪里创建一个NSUserDefaults对象，然后进行读或者写操作。
 
 2）针对同一个关键字对应的对象或者数据，可以对它进行重写，重写之后关键字就对应新的对象或者数据，旧的对象或者数据会被自动清理。
 
 
 - (void)defaultCheck:(id)sender
 {
 NSLog(@" check按钮被按下   ");
 NSUserDefaults *accountDefaults = [NSUserDefaults standardUserDefaults];
 
 if ([accountDefaults boolForKey:NCUserDefaultBoolForRegister] == NO)
 {
 ((UIButton*)sender).selected = YES;
 [accountDefaults setBool:YES forKey:NCUserDefaultBoolForRegister];
 [accountDefaults setObject:nameField.text forKey:NCUserDefaultNameKey];
 [accountDefaults setObject:pwdField.text forKey:NCUserDefaultPasswordKey];
 }
 else {//YES
 ((UIButton*)sender).selected = NO;
 [accountDefaults setBool:NO forKey:NCUserDefaultBoolForRegister];
 [accountDefaults setObject:nil forKey:NCUserDefaultNameKey];
 [accountDefaults setObject:nil forKey:NCUserDefaultPasswordKey];
 }
 }
 
 - (void)loadView {
 [super loadView];
 
 nameField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
 pwdField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
 [nameField setCenter:CGPointMake(160, 100)];
 [pwdField setCenter:CGPointMake(160, 150)];
 
 NSUserDefaults *accountDefaults = [NSUserDefaults standardUserDefaults];
 //存的是bool值一定要用boolForKey:获取
 //如果之前已经保存了User Defaults,那么在读取的时候就要将数据读取出来，显示在用户名和密码框中（这里没有加密）。
 if ([accountDefaults boolForKey:NCUserDefaultBoolForRegister] == YES) {
 nameField.text = [accountDefaults objectForKey:NCUserDefaultNameKey];
 pwdField.text = [accountDefaults objectForKey:NCUserDefaultPasswordKey];
 }
 else
 {
 [nameField setPlaceholder:@"用户名"];
 [pwdField setPlaceholder:@"密码"];
 }
 
 nameField.borderStyle = UITextBorderStyleBezel;
 [pwdField setBorderStyle:UITextBorderStyleRoundedRect];
 [self.view addSubview:nameField];
 [self.view addSubview:pwdField];
 
 UIButton * loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
 [loginBtn setFrame:CGRectMake(0, 0, 50, 30)];
 [loginBtn setCenter:CGPointMake(200, 200)];
 [loginBtn addTarget:self action:@selector(loginToWeiBo:) forControlEvents:UIControlEventTouchUpInside];
 [self.view addSubview:loginBtn];
 
 UIButton * checkBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
 [checkBtn setFrame:CGRectMake(0, 0, 20, 20)];
 [checkBtn setCenter:CGPointMake(160, 180)];
 
 //选中之后得图标
 [checkBtn setBackgroundImage:[UIImage imageNamed:@"lock.png"] forState:(UIControlState)UIControlStateHighlighted];
 [checkBtn setBackgroundImage:[UIImage imageNamed:@"lock.png"] forState:(UIControlState)UIControlStateSelected];
 
 //未选中
 [checkBtn setBackgroundImage:[UIImage imageNamed:@"unlock.png"] forState:(UIControlState)UIControlStateNormal];
 [checkBtn addTarget:self action:@selector(defaultCheck:) forControlEvents:UIControlEventTouchUpInside];
 
 //用户名和密码已经保存
 if([accountDefaults boolForKey:NCUserDefaultBoolForRegister] == YES)
 {
 [checkBtn setSelected:YES];
 }
 
 [self.view addSubview:Btn];
 }
 
 
 */
@end
