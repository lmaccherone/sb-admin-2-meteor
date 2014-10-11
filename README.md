# SB Admin 2 Meteor

This template site was forked from the Start Bootstrap SB Admin 2 template and adapted for Meteor. For more information
on the original see http://startbootstrap.com

Features:

  * Uses Iron Router (iron:router) for client-side routing
  * Left side navigation is dynamically generated and routing is automatically created from a single specificaiton
    in routes.coffee. No <ul> and <li> tags. Just list the menu items. Second level menu is created by adding a
    child menu item and specifying it's parent name. Simple.
  * Redirects and missing routes supported.
  * Only dependency is roughly 70 lines of JavaScript and 60 lines of CSS for metisMenu jQuery plugin. All of this code
    is included in this repository under plugins and loads correctly by Meteor.
  * Requires other dependencies are few meteor packages. Run `meteor list` to duplicate.

Not working (yet?)

  * Tooltips. I think it's some missing CSS. Maybe the Bootstrap 3 package for Meteor is missing something? I would
    appreciate a pull request to fix this. It might just be the .popover classes?
  * Charts. My main effort after this is to add my own visualizations so I may never support the Morris and Flot charts
    that the original SB Admin 2 demonstrated.
  * Only supports two levels of multi-menu. For my own purposes, I only need two so I doubt I'll ever upgrade this.
    Three levels hard-coded should be pretty easy. N-levels would require some sort of template recursion.

## This below copyright and license are as provided by the original repository

Copyright 2013-2014 [Iron Summit Media Strategies](http://www.ironsummitmedia.com/)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the
License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific
language governing permissions and limitations under the License.
