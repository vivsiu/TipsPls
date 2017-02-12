# Pre-work - TipsPls

TipsPls is a tip calculator application for iOS.

Submitted by: Vivien Siu

Time spent: 3.5 hours spent in total

## User Stories

The following **required** functionality is complete:
* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [X] Custom font
* [X] UI animations
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Additional feature 1: Updated look & feel of the navigation controller, view, textbox, and cursor.
- [X] Additional feature 2: Added custom app icon.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

### Version 2.0:
- Additional feature 2: Added custom app icon.

<a href="/Demo%20GIFs/TipsPls_Demo_v2.0_AppIcon.gif" target="_blank"><img src='/Demo%20GIFs/TipsPls_Demo_v2.0_AppIcon.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>


### Version 1.3 (Required + Optional features complete):
- Optional feature 3/3 complete: Made bill field as the first responder such that keyboard is shown and user can type right away when launching the app.

<a href="/Demo%20GIFs/TipsPls_Demo_v1.3_FirstResponder.gif" target="_blank"><img src='/Demo%20GIFs/TipsPls_Demo_v1.3_FirstResponder.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>

### Version 1.2:
- Optional feature 2/3: Added fade in animation on load.

<a href="/Demo%20GIFs/TipsPls_Demo_v1.2_AnimationOnLoad.gif" target="_blank"><img src='/Demo%20GIFs/TipsPls_Demo_v1.2_AnimationOnLoad.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>


### Version 1.1:
- Optional feature 1/3: Updated look & feel with custom fonts.
- Additional feature 1: Updated look & feel of the navigation controller, view, textbox, and cursor.

<a href="/Demo%20GIFs/TipsPls_Demo_v1.1_UIUpdate.gif" target="_blank"><img src='/Demo%20GIFs/TipsPls_Demo_v1.1_UIUpdate.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>

### Version 1.0 (Required features complete):
- Required feature 1/1 complete: Basic, functional version of the tip calculator.

<a href="/Demo%20GIFs/TipsPls_Demo_v1.0_Basic.gif" target="_blank"><img src='/Demo%20GIFs/TipsPls_Demo_v1.0_Basic.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

1) While following the video to build the Tip Calculator app, when attempting to drag the Segmented Control to hook up Value Changed with the calculateTip function, XCode did not highlight the function as shown on the video.  However, I was able to inspect my code against the video and fix it by changing the calculateTip argument type from Any to AnyObject.  I tried looking up the difference between Any and AnyObject online and why it would trigger the hook up to fail in Xcode, there were a lot of explanation on difference between Any vs. AnyObject, but there wasn't an answer to why it would cause the drag/hooking up to fail in Xcode (I'm still curious!).

2) Ran into an error when attempting to change a variable name.  It was because I didn't update the Outlet name properly so after some debugging I figured I had to rehook them up properly.

3) Spent more time than expected to figure out where to properly place the animation blocks (first time doing this) but was able to figure it out by adding some test views and animating them with longer duration.  It was later removed once I got the hang of it.

## License

    Copyright 2017 Vivien Siu

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.