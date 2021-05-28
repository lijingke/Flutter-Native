//
//  AppDelegate.swift
//  FlutterNative
//
//  Created by 李京珂 on 2021/5/28.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@main
class AppDelegate: FlutterAppDelegate  {
    
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc  = ViewController()
        vc.title = "Flutter&Native"
        let navi = UINavigationController(rootViewController: vc)
        window?.rootViewController = navi
        window?.makeKeyAndVisible()
        
        // Runs the default Dart entrypoint with a default Flutter route.
        flutterEngine.run();
        // Used to connect plugins (only if you have plugins with iOS platform code).
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
      }
    
}

