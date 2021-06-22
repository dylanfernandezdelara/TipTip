# Project 1 - TipTip

TipTip is a tip calculator application for iOS.

Submitted by: Dylan Fernandez de Lara

Time spent: 4 hours spent in total

## User Stories

The following **required** functionality is complete:

* [ ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:

* [ ] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

![ezgif com-gif-maker](https://user-images.githubusercontent.com/65196174/123011299-ba9e9c00-d385-11eb-8e84-88e1778e7a5a.gif)

## Notes

Describe any challenges encountered while building the app:
    - The primary challenge for this project was getting a grasp of how UIController, Storyboarding, Outlets, and Actions all interact and work with each other.
    - I had an issue of one text field component becoming disconnected to an outlet and therefore not having its value updated. To fix this, I noticed that there was an open circle to the left of the outlet declaration and connected that to the proper component on my storyboard.
    - I also had an issue implementing the animation to only move up when typing and move down when the field is empty. For this, I added a boolean that kept track of the current state and with that I was able to check the length of the text and the boolean value to see if I needed to move the text.

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library

## License

    Copyright 2021 Dylan Fernandez de Lara

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
