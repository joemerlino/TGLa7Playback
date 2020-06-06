#import <AVFoundation/AVFoundation.h>
//edit app info.plist array uibackgroundModes add audio
//edit app config.xml allowinlinemediaplayback set to false
%hook AVAudioSession
- (BOOL)setActive:(BOOL)active withOptions:(AVAudioSessionSetActiveOptions)options error:(NSError **)outError{
	[self setCategory:AVAudioSessionCategoryPlayback withOptions:(AVAudioSessionCategoryOptions)options error:outError];
	return %orig;
}
%end

%hook CDVViewController
- (void)onAppDidEnterBackground:(id)arg1{
}
%end