//
//  AppConfigure.h
//  xasq
//
//  Created by dssj on 2019/7/26.
//  Copyright © 2019 dssj. All rights reserved.
//

#ifndef AppConfigure_h
#define AppConfigure_h

#pragma mark:

#define Screen_W            UIScreen.main.bounds.size.width
#define Screen_H            UIScreen.main.bounds.size.height

#define Iphone_x            Screen_H / Screen_W  > 2.0 ? true : false

#define StatusBar_H         UIApplication.shared.statusBarFrame.height
#define NavBar_H            CGFloat(44)
#define Bottom_H            Iphone_x ? CGFloat(34) : CGFloat(0)




#endif /* AppConfigure_h */
