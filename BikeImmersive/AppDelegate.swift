//
//  AppDelegate.swift
//  BikeImmersive
//
//  Created by tortoise on 16/8/29.
//  Copyright © 2016年 www.BikeImmersive.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()//确定self.window!是有值的，无论什么情况都调用后面的.backgroundColor方法
//        self.window?.backgroundColor = UIColor.redColor();//不确定self.window?是有值的,所以只有在self.window?有值的情况下，才会调用后面的.backgroundColor方法
        //以上参考 可选类型？和隐式可选类型！基础语法
        self.window!.makeKeyAndVisible()
        var tabBarVC: BITabBarViewController?
        tabBarVC = BITabBarViewController()
        
        var sportViewController: SportViewController?
        sportViewController = SportViewController()
        var sportNav: BINavigationViewController?
        sportNav = BINavigationViewController.init(rootViewController: sportViewController!)
        sportNav!.tabBarItem.title = "运动"
        sportNav!.tabBarItem.selectedImage = UIImage(named: "sportIconSelect")
        sportNav!.tabBarItem.image = UIImage(named: "sportIcon");
        
        var equipmentViewController: EquipmentViewController?
        equipmentViewController = EquipmentViewController()
        var equipmentNav: BINavigationViewController?
        equipmentNav = BINavigationViewController.init(rootViewController: equipmentViewController!)
        equipmentNav?.title = "装备"
        
        var communityVC: CommunityViewController?
        communityVC = CommunityViewController()
        var communityNav: BINavigationViewController?
        communityNav = BINavigationViewController.init(rootViewController: communityVC!)
        communityNav?.title = "社区"
        
        var mineVC: MineViewController?
        mineVC = MineViewController()
        var mineNav: BINavigationViewController?
        mineNav = BINavigationViewController.init(rootViewController: mineVC!)
        mineNav?.title = "我的"
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.grayColor(),NSFontAttributeName:UIFont.systemFontOfSize(12)], forState: UIControlState.Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.blueColor(),NSFontAttributeName:UIFont.systemFontOfSize(12)], forState: UIControlState.Selected)
        tabBarVC!.viewControllers = [sportNav!,equipmentNav!,communityNav!,mineNav!]
        self.window!.rootViewController = tabBarVC
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

