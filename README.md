# Project 1 - TipTip

TipTip is a tip calculator application for iOS.

Submitted by: Dylan Fernandez de Lara

Time spent: 6 hours spent in total

## User Stories

The following **required** functionality is complete:

* [ ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:

* [ ] UI animations

## Video Walkthrough

![ezgif com-gif-maker](https://user-images.githubusercontent.com/65196174/123011299-ba9e9c00-d385-11eb-8e84-88e1778e7a5a.gif)

## Notes

Describe any challenges encountered while building the app:
- The primary challenge for this project was getting a grasp of how UIController, Storyboarding, Outlets, and Actions all interact and work with each other.
- I had an issue of one text field component becoming disconnected to an outlet and therefore not having its value updated. To fix this, I noticed that there was an open circle to the left of the outlet declaration and connected that to the proper component on my storyboard.
- I also had an issue implementing the animation to only move up when typing and move down when the field is empty. For this, I added a boolean that kept track of the current state and with that I was able to check the length of the text and the boolean value to see if I needed to move the text.
- This was my first project in Objective-C and the learning curve felt steep at times. I am trying to focus on cementing my foundations using XCode and Objective-C, so I spent a lot of digesting the content that was actually given to us. Because of this reason, I didn't have enough time to do all of the additional features that I would have wanted to. My goal is that this time spent focusing on the core material will pay off in the long run and that for the next project I finish quicker and have more time to do additional features. Furthermore, I didn't have a chance to play around with design because of the time and beginner constraint. 

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
