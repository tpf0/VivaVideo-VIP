#import <UIKit.h>
#import <substarte.h>

%hook AppDelegate

- (void)applicationDidBecomeActive:(id)application {
    NSUserDefaults *validate = [NSUserDefaults standardUserDefaults];
    NSString *alreadyRun = @"already_run";
    if ([validate boolForKey:alreadyRun])
    return;
    [validate setBool:YES forKey:alreadyRun];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"VIP Activated!"
    message:@"Thanks for Installing VIVAVIP" delegate:nil cancelButtonTitle:@"Okay ;)"
    otherButtonTitles:nil];
    [alert show];
}

%end


// com.quvideo.XiaoYing
// Enable VIP for lifetime **def**

%hook XYRemoteAppConfigMonetizeModel
-(bool)enableNewVipPage {
  return YES;
}
}

-(bool)VIPUsePromotionLimit {
  return NO;
}
}

-(bool)VIPMembershipManagepageEnable {
  return YES;
}
}

-(bool)vipPageStyleSwitcher {
  return YES;
}
}

-(void)setVipPageStyleSwitcher:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
}

// dosen't work it will type "null"

-(void)setVipFreeTrialShowDay:(bool)arg1 {
  arg1 = YES;
  %org(arg1);
}
%end

%hook XYGalleryDataMgr
-(bool)vipForNextBtn {
  return YES;
}
}

-(void)setVipForNextBtn:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
%end

%hook XYGalleryConfigModel
-(void)setVipForNextBtn:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
}

-(bool)vipForNextBtn {
  return YES;
}
%end


%hook XYVivalAPModuleServicelmpl
-(bool)xy_isVIP {
  return YES;
}
%end

%hook XYVivaCommunityWebHander
+(bool)userIsVip {
  return YES;
}
%end

%hook XYIAPReceiptResult
-(bool)isVip {
  return YES;
}
}

-(void)setIsVip:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
}

-(bool)xy_isVipMember {
  return YES;
}
%end

%hook XYIAPMgr
-(bool)xy_isVipPlatinum {
  return YES;
}
}

-(bool)isVIP {
  return YES;
}
}

-(bool)isVIPProduct:(id)arg1 {
  arg1 = nil
  %orig(arg1);
}
%end

%hook XYFeedbackConfiguration
-(bool)isVip {
  return YES;
}
}

-(void)setIsVip:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
%end

%hook XYCreatorTemplateModel
-(bool)isVip {
  return YES;
}
}

-(void)setIsVip:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
%end

%hook XYVivaHomePageHeaderView
-(bool)isVip {
  return YES;
}
}

-(void)setIsVip:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
%end

%hook XYUserLevelVIPView
-(bool)isVIP {
  return YES;
}
}

-(void)setIsVIP:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
%end

%hook XYUserLevelCheckTableView
-(bool)isVIP {
  return YES;
}
}

-(void)setIsVIP:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
%end

%hook XYMemberMangerViewController
-(bool)isVipSubscriptionStatus {
  return YES;
}
}

-(bool)checkIsVIPSubscriptionStatus {
  return NO;
}
}

-(void)setIsVipSubscriptionStatus:(bool)arg1 {
  arg1 = NO;
  %orig(arg1);
}
%end
