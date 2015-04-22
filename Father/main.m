//
//  main.m
//  Father
//
//  Created by wanglin on 14-12-16.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Father.h"
#import "Son.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        Father *father = [[Father alloc]init];
//       [father showMoney];
        Son *son = [[Son alloc]init];
        [son showMoney];
        
        
                  }
    return 0;
}
/*
 UIK 导航视图控制器
 2.UINavigationController(导航视图控制器)
 
 2.1 是什么
 
 是控制器(UIViewController的子类)，控制器的控制器，是用来管理其它VC(UIViewController)的VC(UINavigationController).
 
 2.2 有什么用
 
 管理和控制VC的走向，9比present方式更好，更清晰。
 
 2.3 怎么用
 
 1)创建UINavigationController对象
 
 初始化时指定一个根视图控制器(UIViewController)
 
 2)推出一个界面(VC)
 
 pushViewController:(XXX)
 
 3)回退前一个界面：
 
 popViewController或不写任何代码(自动生成一个按钮)
 
 2.4 内部的工作原理
 
 1)navi内部维护着一个VC对象的数组
 
 self.navigationController.viewControllers
 
 将此数组当做栈来管理，栈是一种数据结构，特点先进后出，后进先出。
 
 2)navi必须有一个根VC，第一个被navi包含的VC。
 
 UINavigationController* navController = [[UINavigationController alloc]initWithRootViewController:viewController1];
 
 3)push一个新界面(VC),旧的VC不会释放的。
 
 4）navi会保持所有push进去的VC的引用，push一个VC其实是将此VC放入到navi的数组中。
 
 5)当pop一个VC从nai中出来时，此VC就会释放掉。
 
 6)不能Pop根VC
 
 2.5 使用方式
 
 2.5.1 NavigationBar(导航栏)
 
 1>标题(Title)
 
 在具体的VC中，设置一个title的属性值
 
 self.title = @“ABC”
 
 2 >按钮
 
 .navigationItem.leftBarButtonItems = @[xxx,xxx];
 
 .navigationItem.rightBarButtonItem
 
 3 >UIBarButtonItem
 
 专门用在各种Bar上的按钮，与普通UIButton是不一样
 
 系统按钮
 
 initWithBarButtonSystemItem:target:action初始化
 
 文字按钮
 
 initWithTitle: style:target:action 初始化
 
 eg:
 
 //1.创建按钮
 
 UIBarButtonItem* bbi = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
 
 //2.放在导航栏的右侧
 
 self.navigationItem.rightBarButtonItem = bbi;
 
 4 >导航栏可以隐藏
 
 self.navigationcontroller.navigationBarHidden = YES;
 
 2.5.2 ToolBar(工具条)
 
 1>NavigationController自带着ToolBar
 
 默认情况下，此ToolBar是隐藏。
 
 如果需要，可以设置显示：
 
 self.navigationController.toolBarHidden = NO;
 
 2>给工具条添加按钮
 
 self.toolBarItems
 
 3>特效按钮：(填充区域)
 
 Fixed:指定按钮宽度
 
 UIBarButtonSystemItemFixedSpace
 
 Flexible:自动分配所占空间大小
 
 UIBarButtonSystemItemFlexibleSpace
 
 注：工具栏的按钮显示
 
 1.按钮的内容(功能)
 
 UIBarButtonItem *b1 = [[UIBarButtonItem alloc]initWithTitle:@"Hello" style:UIBarButtonItemStyleBordered target:nil action:nil];
 
 2.填充区域
 
 UIBarButtonItem *fixed = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
 
 3.将两者的综合内容 一起添加到工具栏中
 
 填充区域+内容按钮+填充区域+内容按钮...
 
 self.toolbarItems =
 
 @[fixed,b1,fixed,b2,fixed,b3];
 
 2.5.3 在一个NavigationController中再次present一个NavigationController。
 
 作业：界面的跳转与传值(反向)
 
 0.复习代码
 
 
 
 1.星座运程App:
 
 界面1:
 
 有一个按钮:”请选择您的星座”
 
 当用户点击此按钮时，跳转到第二个界面
 
 界面2:
 
 有12个星座(可以做12个按钮)可选，选完后返回值第个界面。
 
 界面1：显示这个星座本年的运程。
 
 2.文本创建器：
 
 界面1：
 
 有一个按钮：“创建文本”
 
 当用户点击按钮后，跳转到第二个界面。
 
 界面2：
 
 x:[TextField] width:[TextField]
 
 y:[TextField] heigth:[TextField]
 
 text:[TextField]
 
 [确认按钮]
 
 当用户点击确认按钮后，返回到第一个界面，在第一个界面中，根据用户刚刚输入的内容，创建一个UILabel对象，label对象的frame、内容根据刚才的输入值确定，输出Label对象，并入到界面1的子视图中。
 
 
 
 3.仿造通讯录界面（选做）
 
 界面1
 
 所有联系人  [+]	 点击后从下往上出现界面2
 
 界面2
 
 [取消]  新建联系人  [完成]	 点击任意按钮关掉界面2
 
 
 
 
 
 
 
 
 
 
 
 
 //开启透明
 
 self.navigationController.navigationBar.translucent=YES;
 self.navigationController.navigationBar.backgroundColor=[UIColor brownColor];
 //    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"haha副本.png"] forBarMetrics:UIBarMetricsDefault];
 self.title=@"小内奸";
 //   裁剪多余
 self.navigationController.navigationBar.clipsToBounds=YES;
 UIBarButtonItem* leftButton=[[UIBarButtonItem alloc]initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target:self action:@selector(Click:)];
 leftButton.tag=101;
 
 
 UIBarButtonItem* rightButton=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(Click:)];
 //    self.navigationItem.leftBarButtonItems=@[leftButton,rightButton];
 
 UIBarButtonItem* aaa=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(Click:)];
 
 
 self.navigationItem.rightBarButtonItem=rightButton;
 // self.navigationItem.leftBarButtonItem=leftButton;
 self.navigationItem.leftBarButtonItems=@[leftButton,aaa];
 
 //   主标题
 self.navigationItem.title=@"小内奸";
 //  副标题
 self.navigationItem.prompt=@"张铁兵";
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 //  底层的toolbar
 self.navigationController.toolbarHidden=NO;
 
 // 设置工具条的样式
 self.navigationController.toolbar.barStyle=UIBarStyleBlack;
 //   默认YES。开启透明
 self.navigationController.toolbar.translucent=YES;
 // 加按钮
 UIBarButtonItem* btn1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemOrganize target:self action:@selector(aaa:)];
 
 UIBarButtonItem* btn2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(aaa:)];
 
 
 //加弹簧
 
 UIBarButtonItem* btns=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:btn1 action:nil];
 
 
 
 
 //  加到toolbarItems
 
 
 
 
 self.toolbarItems=@[btn1,btns,btn2];
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 弱引用
 
 __weak typeof (self)weakSelf=self;
 
 
 
 
 
 
 
 
 
 //徽标
 
 ab1.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
 ab1.tabBarItem.badgeValue=@"100";
 ab1.title=@"张铁兵";
 UINavigationController* nav2=[[UINavigationController alloc]initWithRootViewController:ab1];
 
 // .image=[UIImage imageNamed:@"qr_tabbar_bookcity@2x.png"];
 
 //名字
 ab2.title=@"小内奸”;
 //徽标
 
 ab2.tabBarItem.badgeValue=@"10";
 ab2.tabBarItem.image=[UIImage imageNamed:@"tab_0.png"];
 ab2.tabBarItem.badgeValue=@"10";
 ab3.title=@"小汉奸";
 ab4.title=@"滚逼";
 ab4.tabBarItem.badgeValue=@"3";
 ab5.title=@"汉奸狗";
 
 //加导航控制器
 UINavigationController* nav1=[[UINavigationController alloc]initWithRootViewController:ab5];
 
 
 ab6.title=@"奸小张";
 ab7.title=@"张奸";
 
 
 UINavigationController* nav=[[UINavigationController alloc]initWithRootViewController:ab7];
 
 
 
 
 
 UITabBarController *tab=[[UITabBarController alloc]init];
 tab.viewControllers=@[nav2,ab2,ab3,ab4,nav1,ab6,nav];
 
 self.window.rootViewController=tab;
 
 
 ——————————————————————————————————————————————————————
 <UITabBarControllerDelegate>
 
 bar.delegate=self;
 
 
 
 
 //  设置分栏的视图能不能被选择
 -(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
 {
 return YES;//yes 可以
 }
 
 
 
 
 // 监测当前选择的是哪个分栏
 -(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
 {
 NSLog(@"标题：%@",viewController.title);
 }
 
 
 
 //当分段大于5，才能出现More  如果你点击了More的，会调用
 -(void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers
 {
 NSLog(@"当将要开始Edit时调用");
 
 }
 
 
 //将要结束编辑时,点击了DOne
 -(void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
 {
 
 NSLog(@"已经结束了");
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ————————
 加载视图    viewDidlod
 将要显示视图   viewWillAppear
 已经开始显示视图  viewDidAppear
 视图将要消失  viewWillDisAppea
 视图已经消失了 viewDidDisAppear
 
 
 
 
 
 低内存警告
 self.view=nil；
 
 - (void)viewDidLoad
 
 {
 
 [super viewDidLoad];
 
 NSLog(@"载入视图");
 
 }
 
 
 
 
 
 
 
 -(void)viewDidAppear:(BOOL)animated
 
 {
 
 [super viewDidAppear:animated];
 
 NSLog(@"将要出现");
 
 }
 
 
 
 
 
 
 
 
 
 -(void)viewWillDisappear:(BOOL)animated
 
 {
 
 [super viewWillDisappear:animated];
 
 NSLog(@"将要消失");
 
 
 
 }
 
 
 
 -(void)viewDidDisappear:(BOOL)animated
 
 {
 
 NSLog(@"已经消失");
 
 
 
 }
 
 
 
 
 
 
 
 - (void)didReceiveMemoryWarning
 
 {
 
 [super didReceiveMemoryWarning];
 
 
 
 NSLog(@"低内存警告");
 
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 self.navigationController.navigationBarHidden=YES;
 self.scrollview=[[UIScrollView alloc]init];
 //位置和大小
 self.scrollview.frame=CGRectMake(0, 0, 320, 568);
 //设置滚动视图的范围
 self.scrollview.contentSize=CGSizeMake(320*6, 568-64);
 // 开启分页
 self.scrollview.pagingEnabled=YES;
 //拖拽加弹簧效果
 self.scrollview.bounces=NO;
 //设置委托
 self.scrollview.delegate=self;
 [self.view addSubview:self.scrollview];
 
 for (int i=0; i<6; i++) {
 //加入图片
 UIImageView* image=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"IMG%d.JPG",i+1]]];
 //设置每个imageview的大小
 image.frame=CGRectMake(320*i, 0, 320, 568-64);
 [self.scrollview addSubview:image];

 1.UITextField的初始化及设置
 
 searchTextField=[[UITextField alloc]initWithFrame:CGRectMake(1.0,0.0,searchBackGroundImageView.frame.size.width, searchBackGroundImageView.frame.size.height)];
 
 //创建一个UITextField对象，及设置其位置及大小
 
 searchTextField.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;//设置其输入内容竖直居中
 
 UIImageView* imgV=[[UIImageViewalloc]initWithImage:[UIImageimageNamed:@"search_ico"]];
 
 searchTextField.leftView=imgV;//设置输入框内左边的图标
 
 [self.tf11setClearButtonMode:UITextFieldViewModeWhileEditing];//右侧删除按钮
 
 searchTextField.leftViewMode=UITextFieldViewModeAlways;
 
 searchTextField.placeholder=@"请输入关键字";//默认显示的字
 
 searchTextField.secureTextEntry=YES;//设置成密码格式
 
 searchTextField.keyboardType=UIKeyboardTypeDefault;//设置键盘类型为默认的
 
 searchTextField.returnKeyType=UIReturnKeyDefault;//返回键的类型
 
 searchTextField.delegate=self;//设置委托
 
 2.可以通过委托方法关闭键盘
 
 -(BOOL)textFieldShouldReturn:(UITextField*)textField
 
 {
 
 [searchTextField resignFirstResponder];
 
 return YES;
 
 }
 
 3.聚焦方法
 
 [searchTextField becomeFirstResponder];
 
 4.各种收键盘
 
 - (void)viewDidLoad {
 
 [superviewDidLoad];
 
 //第一种：触摸背景来关闭虚拟键盘
 
 //给背景view添加UIControl触发点击事件
 
 UIControl *_back = [[UIControlalloc] initWithFrame:self.view.frame];
 
 _back.backgroundColor = [UIColorgrayColor];
 
 self.view = _back;
 
 [_back release];
 
 [(UIControl *)self.viewaddTarget:selfaction:@selector(backgroundTap) forControlEvents:UIControlEventTouchDown];
 
 //红色textfield
 
 textField1 = [[UITextFieldalloc] initWithFrame:CGRectMake(20, 300, 200, 30)];
 
 textField1.backgroundColor = [UIColorredColor];
 
 textField1.borderStyle = UITextBorderStyleRoundedRect;
 
 textField1.textColor = [UIColorredColor];
 
 textField1.delegate = self;
 
 [self.viewaddSubview:textField1];
 
 
 
 textField2 = [[UITextFieldalloc] initWithFrame:CGRectMake(20, 30, 200, 30)];
 
 textField2.backgroundColor = [UIColorclearColor];
 
 textField2.borderStyle = UITextBorderStyleRoundedRect;
 
 textField2.textColor = [UIColorredColor];
 
 textField2.delegate = self;
 
 [self.viewaddSubview:textField2];
 
 
 
 //第三种: 点击虚拟键盘上按键手键盘
 
 UIToolbar *bar=[[UIToolbaralloc]initWithFrame:CGRectMake(0, 0, 320, 30)];
 
 UIBarButtonItem *btn=[[UIBarButtonItemalloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCanceltarget:selfaction:@selector(resign)];
 
 UIBarButtonItem *space=[[UIBarButtonItemalloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpacetarget:selfaction:nil];//用于把btn挤到右侧
 
 NSArray *btarr=[NSArrayarrayWithObjects:btn,space,nil];
 
 bar.items=btarr;
 
 //    bar.tintColor=[UIColor blackColor];//给toolbar染色作用同下
 
 bar.barStyle=UIBarStyleBlackTranslucent;//bar的类型设置半透明
 
 self.textField1.inputAccessoryView=bar;
 
 self.textField2.inputAccessoryView=bar;
 
 }
 
 //toolbar方法
 
 -(void)resign{
 
 [self.textField1resignFirstResponder];
 
 [self.textField2resignFirstResponder];
 
 }
 
 //点击北京手键盘
 
 -(IBAction)backgroundTap
 
 {
 
 //动画是执行推上textfield后还原
 
 NSTimeInterval animationDuration = 0.30f;
 
 [UIViewbeginAnimations:@"ResizeForKeyboard"context:nil];
 
 [UIViewsetAnimationDuration:animationDuration];
 
 CGRect rect = CGRectMake(0.0f, 20.0f, self.view.frame.size.width, self.view.frame.size.height);      //还原view
 
 self.view.frame = rect;
 
 [UIViewcommitAnimations];
 
 
 
 [textField1resignFirstResponder];
 
 [textField2resignFirstResponder];
 
 }
 
 
 
 第二种：点击return键手键盘

-(BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    //动画是执行推上textfield后还原
    
    NSTimeInterval animationDuration = 0.30f;
    
    [UIViewbeginAnimations:@"ResizeForKeyboard"context:nil];
    
    [UIViewsetAnimationDuration:animationDuration];
    
    CGRect rect = CGRectMake(0.0f, 20.0f, self.view.frame.size.width, self.view.frame.size.height);      //还原上一步view上提效果
    
    self.view.frame = rect;
    
    [UIViewcommitAnimations];
    
    
    
    [textField resignFirstResponder];
    
    returnYES;
    
}



解决虚拟键盘挡住UITextField的方法,将整个self.view上推键盘顶部与textfield底部大小的距离即offset

- (void)textFieldDidBeginEditing:(UITextField *)textField

{
    
    CGRect frame = textField.frame;
    
    int offset = frame.origin.y+60- (self.view.frame.size.height - 216.0);//求出键盘顶部与textfield底部大小的距离
    
    NSTimeInterval animationDuration = 0.30f;
    
    [UIViewbeginAnimations:@"ResizeForKeyBoard"context:nil];
    
    [UIViewsetAnimationDuration:animationDuration];
    
    float width = self.view.frame.size.width;
    
    float height = self.view.frame.size.height;
    
    if(offset > 0)
        
    {
        
        CGRect rect = CGRectMake(0.0f, -offset,width,height); //上推键盘操作,view大小始终没变
        
        self.view.frame = rect;
        
    }
    
    [UIViewcommitAnimations];
    
}




IOS-TextField知多少

原文地址：http://blog.csdn.net/tskyfree/article/details/8121915
//初始化textfield并设置位置及大小
UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(20, 20, 130, 30)];



//设置边框样式，只有设置了才会显示边框样式

text.borderStyle = UITextBorderStyleRoundedRect;



typedef enum {
    
    UITextBorderStyleNone,
    
    UITextBorderStyleLine,
    
    UITextBorderStyleBezel,
    
    UITextBorderStyleRoundedRect
    
} UITextBorderStyle;



//设置输入框的背景颜色，此时设置为白色 如果使用了自定义的背景图片边框会被忽略掉

text.backgroundColor = [UIColor whiteColor];



//设置背景

text.background = [UIImage imageNamed:@"dd.png"];



//设置背景

text.disabledBackground = [UIImage imageNamed:@"cc.png"];



//当输入框没有内容时，水印提示 提示内容为password

text.placeholder = @"password";



//设置输入框内容的字体样式和大小

text.font = [UIFont fontWithName:@"Arial" size:20.0f];



//设置字体颜色

text.textColor = [UIColor redColor];



//输入框中是否有个叉号，在什么时候显示，用于一次性删除输入框中的内容

text.clearButtonMode = UITextFieldViewModeAlways;



typedef enum {
    
    UITextFieldViewModeNever,  重不出现
    
    UITextFieldViewModeWhileEditing, 编辑时出现
    
    UITextFieldViewModeUnlessEditing,  除了编辑外都出现
    
    UITextFieldViewModeAlways   一直出现
    
} UITextFieldViewMode;



//输入框中一开始就有的文字

text.text = @"一开始就在输入框的文字";



//每输入一个字符就变成点 用语密码输入

text.secureTextEntry = YES;



//是否纠错

text.autocorrectionType = UITextAutocorrectionTypeNo;



typedef enum {
    
    UITextAutocorrectionTypeDefault, 默认
    
    UITextAutocorrectionTypeNo,   不自动纠错
    
    UITextAutocorrectionTypeYes,  自动纠错
    
} UITextAutocorrectionType;



//再次编辑就清空

text.clearsOnBeginEditing = YES;



//内容对齐方式

text.textAlignment = UITextAlignmentLeft;



//内容的垂直对齐方式  UITextField继承自UIControl,此类中有一个属性contentVerticalAlignment

text.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;



//设置为YES时文本会自动缩小以适应文本窗口大小.默认是保持原来大小,而让长文本滚动

textFied.adjustsFontSizeToFitWidth = YES;



//设置自动缩小显示的最小字体大小

text.minimumFontSize = 20;



//设置键盘的样式

text.keyboardType = UIKeyboardTypeNumberPad;



typedef enum {
    
    UIKeyboardTypeDefault,       默认键盘，支持所有字符
    
    UIKeyboardTypeASCIICapable,  支持ASCII的默认键盘
    
    UIKeyboardTypeNumbersAndPunctuation,  标准电话键盘，支持＋＊＃字符
    
    UIKeyboardTypeURL,            URL键盘，支持.com按钮 只支持URL字符
    
    UIKeyboardTypeNumberPad,              数字键盘
    
    UIKeyboardTypePhonePad,     电话键盘
    
    UIKeyboardTypeNamePhonePad,   电话键盘，也支持输入人名
    
    UIKeyboardTypeEmailAddress,   用于输入电子 邮件地址的键盘
    
    UIKeyboardTypeDecimalPad,     数字键盘 有数字和小数点
    
    UIKeyboardTypeTwitter,        优化的键盘，方便输入@、#字符
    
    UIKeyboardTypeAlphabet = UIKeyboardTypeASCIICapable,
    
} UIKeyboardType;



//首字母是否大写

text.autocapitalizationType = UITextAutocapitalizationTypeNone;



typedef enum {
    
    UITextAutocapitalizationTypeNone, 不自动大写
    
    UITextAutocapitalizationTypeWords,  单词首字母大写
    
    UITextAutocapitalizationTypeSentences,  句子的首字母大写
    
    UITextAutocapitalizationTypeAllCharacters, 所有字母都大写
    
} UITextAutocapitalizationType;



//return键变成什么键

text.returnKeyType =UIReturnKeyDone;



typedef enum {
    
    UIReturnKeyDefault, 默认 灰色按钮，标有Return
    
    UIReturnKeyGo,      标有Go的蓝色按钮
    
    UIReturnKeyGoogle,标有Google的蓝色按钮，用语搜索
    
    UIReturnKeyJoin,标有Join的蓝色按钮
    
    UIReturnKeyNext,标有Next的蓝色按钮
    
    UIReturnKeyRoute,标有Route的蓝色按钮
    
    UIReturnKeySearch,标有Search的蓝色按钮
    
    UIReturnKeySend,标有Send的蓝色按钮
    
    UIReturnKeyYahoo,标有Yahoo的蓝色按钮
    
    UIReturnKeyYahoo,标有Yahoo的蓝色按钮
    
    UIReturnKeyEmergencyCall, 紧急呼叫按钮
    
} UIReturnKeyType;



//键盘外观

textView.keyboardAppearance=UIKeyboardAppearanceDefault；

typedef enum {
    
    UIKeyboardAppearanceDefault， 默认外观，浅灰色
    
    UIKeyboardAppearanceAlert，     深灰 石墨色
    
    
    
} UIReturnKeyType;





//设置代理 用于实现协议

text.delegate = self;



//把textfield加到视图中

[self.window addSubview:text];



//最右侧加图片是以下代码   左侧类似

UIImageView *image=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"right.png"]];

text.rightView=image;

text.rightViewMode = UITextFieldViewModeAlways;



typedef enum {
    
    UITextFieldViewModeNever,
    
    UITextFieldViewModeWhileEditing,
    
    UITextFieldViewModeUnlessEditing,
    
    UITextFieldViewModeAlways
    
} UITextFieldViewMode;





//按return键键盘往下收  becomeFirstResponder



类要采用UITextFieldDelegate协议



text.delegate = self;  声明text的代理是我，我会去实现把键盘往下收的方法 这个方法在UITextFieldDelegate里所以我们要采用UITextFieldDelegate这个协议



- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    [text resignFirstResponder];    //主要是[receiver resignFirstResponder]在哪调用就能把receiver对应的键盘往下收
    
    return YES;
    
}





重写绘制行为

除了UITextField对象的风格选项，你还可以定制化UITextField对象，为他添加许多不同的重写方法，来改变文本字段的显示行为。这些方法都会返回一个CGRect结构，制定了文本字段每个部件的边界范围。以下方法都可以重写。



– textRectForBounds:　　    //重写来重置文字区域

– drawTextInRect:　　        //改变绘文字属性.重写时调用super可以按默认图形属性绘制,若自己完全重写绘制函数，就不用调用super了.

– placeholderRectForBounds:　　//重写来重置占位符区域

– drawPlaceholderInRect:　　//重写改变绘制占位符属性.重写时调用super可以按默认图形属性绘制,若自己完全重写绘制函数，就不用调用super了.

– borderRectForBounds:　　//重写来重置边缘区域

– editingRectForBounds:　　//重写来重置编辑区域

– clearButtonRectForBounds:　　//重写来重置clearButton位置,改变size可能导致button的图片失真

– leftViewRectForBounds:

– rightViewRectForBounds:



委托方法



- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    
    
    //返回一个BOOL值，指定是否循序文本字段开始编辑
    
    
    
    return YES;
    
}



- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    
    
    //开始编辑时触发，文本字段将成为first responder
    
}



- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    
    
    //返回BOOL值，指定是否允许文本字段结束编辑，当编辑结束，文本字段会让出first responder
    
    //要想在用户结束编辑时阻止文本字段消失，可以返回NO
    
    //这对一些文本字段必须始终保持活跃状态的程序很有用，比如即时消息
    
    
    
    return NO;
    
}



- (BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    
    
    //当用户使用自动更正功能，把输入的文字修改为推荐的文字时，就会调用这个方法。
    
    //这对于想要加入撤销选项的应用程序特别有用
    
    //可以跟踪字段内所做的最后一次修改，也可以对所有编辑做日志记录,用作审计用途。
    
    //要防止文字被改变可以返回NO
    
    //这个方法的参数中有一个NSRange对象，指明了被改变文字的位置，建议修改的文本也在其中
    
    
    
    return YES;
    
}



- (BOOL)textFieldShouldClear:(UITextField *)textField{
    
    
    
    //返回一个BOOL值指明是否允许根据用户请求清除内容
    
    //可以设置在特定条件下才允许清除内容
    
    
    
    return YES;
    
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    
    
    //返回一个BOOL值，指明是否允许在按下回车键时结束编辑
    
    //如果允许要调用resignFirstResponder 方法，这回导致结束编辑，而键盘会被收起[textField resignFirstResponder];
    
    //查一下resign这个单词的意思就明白这个方法了
    
    
    
    return YES;
    
}







通知

UITextField派生自UIControl，所以UIControl类中的通知系统在文本字段中也可以使用。除了UIControl类的标准事件，你还可以使用下列UITextField类特有的事件



UITextFieldTextDidBeginEditingNotification

UITextFieldTextDidChangeNotification

UITextFieldTextDidEndEditingNotification

当文本字段退出编辑模式时触发。通知的object属性存储了最终文本。



因为文本字段要使用键盘输入文字，所以下面这些事件发生时，也会发送动作通知



UIKeyboardWillShowNotification   //键盘显示之前发送

UIKeyboardDidShowNotification    //键盘显示之后发送

UIKeyboardWillHideNotification   //键盘隐藏之前发送

UIKeyboardDidHideNotification    //键盘隐藏之后发送



1、Text ：设置文本框的默认文本。

2、Placeholder ： 可以在文本框中显示灰色的字，用于提示用户应该在这个文本框输入什么内容。当这个文本框中输入了数据时，用于提示的灰色的字将会自动消失。

3、Background ：

4、Disabled ： 若选中此项，用户将不能更改文本框内容。

5、接下来是三个按钮，用来设置对齐方式。

6、Border Style ： 选择边界风格。

7、Clear Button ： 这是一个下拉菜单，你可以选择清除按钮什么时候出现，所谓清除按钮就是出一个现在文本框右边的小 X ，你可以有以下选择：

7.1 Never appears ： 从不出现

7.2 Appears while editing ： 编辑时出现

7.3 Appears unless editing ：

7.4 Is always visible ： 总是可见

8、Clear when editing begins ： 若选中此项，则当开始编辑这个文本框时，文本框中之前的内容会被清除掉。比如，你现在这个文本框 A 中输入了 "What" ，之后去编辑文本框 B，若再回来编辑文本框 A ，则其中的"What" 会被立即清除。

9、Text Color ： 设置文本框中文本的颜色。

10、Font ： 设置文本的字体与字号。

11、Min Font Size ： 设置文本框可以显示的最小字体（不过我感觉没什么用）

12、Adjust To Fit ： 指定当文本框尺寸减小时，文本框中的文本是否也要缩小。选择它，可以使得全部文本都可见，即使文本很长。但是这个选项要跟 Min Font Size 配合使用，文本再缩小，也不会小于设定的 Min Font Size 。

接下来的部分用于设置键盘如何显示。

13、Captitalization ： 设置大写。下拉菜单中有四个选项：

13.1 None ： 不设置大写

13.2 Words ： 每个单词首字母大写，这里的单词指的是以空格分开的字符串

13.3 Sentances ： 每个句子的第一个字母大写，这里的句子是以句号加空格分开的字符串

13.4 All Characters ： 所以字母大写

14、Correction ： 检查拼写，默认是 YES 。

15、Keyboard ： 选择键盘类型，比如全数字、字母和数字等。

16、Appearance：

17、Return Key ： 选择返回键，可以选择 Search 、 Return 、 Done 等。

18、Auto-enable Return Key ： 如选择此项，则只有至少在文本框输入一个字符后键盘的返回键才有效。

19、Secure ： 当你的文本框用作密码输入框时，可以选择这个选项，此时，字符显示为星号。



1.Alignment Horizontal 水平对齐方式

2.Alignment Vertical 垂直对齐方式

3.用于返回一个BOOL值  输入框是否 Selected(选中) Enabled(可用) Highlighted(高亮)



限制只能输入特定的字符



(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSCharacterSet *cs;
    
    cs = [[NSCharacterSet characterSetWithCharactersInString:NUMBERS]invertedSet];
    
    
    
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs]componentsJoinedByString:@""]; //按cs分离出数组,数组按@""分离出字符串
    
    
    
    BOOL canChange = [string isEqualToString:filtered];
    
    
    
    return canChange;
    
}



上面那个NUMBERS是一个宏，可以在文件顶部定义：

#define NUMBERS @”0123456789\n” （这个代表可以输入数字和换行，请注意这个\n，如果不写这个，Done按键将不会触发，如果用在SearchBar中，将会不触发Search事件，因为你自己限制不让输入\n，好惨，我在项目中才发现的。）

所以，如果你要限制输入英文和数字的话，就可以把这个定义为：

#define kAlphaNum   @”ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789″。

当然，你还可以在以上方法return之前，做一提示的，比如提示用户只能输入数字之类的。如果你觉得有需要的话。



限制只能输入一定长度的字符



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;

{  //string就是此时输入的那个字符 textField就是此时正在输入的那个输入框 返回YES就是可以改变输入框的值 NO相反
    
    
    
    if ([string isEqualToString:@"\n"])  //按会车可以改变
        
    {
        
        return YES;
        
    }
    
    
    
    NSString * toBeString = [textField.text stringByReplacingCharactersInRange:range withString:string]; //得到输入框的内容
    
    
    
    if (self.myTextField == textField)  //判断是否时我们想要限定的那个输入框
        
    { 
        
        if ([toBeString length] > 20) { //如果输入框内容大于20则弹出警告
            
            textField.text = [toBeString substringToIndex:20]; 
            
            UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:nil message:@"超过最大字数不能输入了" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil] autorelease]; 
            
            [alert show]; 
            
            return NO; 
            
        } 
        
    } 
    
    return YES; 
    
}




*/