
# SB Admin 2 Meteor

## Live demo

http://sb-admin-2.meteor.com

## Credits

This template site was forked from the Start Bootstrap SB Admin 2 template and adapted for Meteor. For more information
on the original see http://startbootstrap.com

## Features:

  * CoffeeScript, Jade, and LESS (only slightly modified from the one provided by startbootstrap.com). The original is
    raw JavaScript and HTML.
  * Uses Iron Router (iron:router) for client-side routing.
  * Left side navigation is dynamically generated and routing is automatically created from a simple specificaiton
    in routes.coffee. No `<ul>` and `<li>` tags. Just list the menu items in JSON. Second level menu is created by
    specifying the parent of menu item specification. Simple.
  * Redirects and missing routes supported.
  * Only dependency is roughly 70 lines of JavaScript and 60 lines of CSS for metisMenu jQuery plugin. All of this code
    is included in this repository under plugins and loads correctly by Meteor.
  * Only other dependencies are a few meteor packages. Run `meteor list` to duplicate.
  * Wired into Meteor's account system for user creation, login, and logout.
  * Two themes: a) light (like SB Admin 2), and b) dark (similar to SB Admin 1). However, both themes make better use
    of LESS functionality (functions, variables, etc.) than the startbootstrap source.

## Not done (yet?)

  * Login for GitHub as an example for other login services.
  * Storing other information in the user account.
  * Tooltips. I think it's some missing CSS. Maybe the Bootstrap 3 package for Meteor is missing something? I would
    appreciate a pull request to fix this. It might just be the .popover classes?
  * Need to templatize the topbar navigation.
  * Could use another theme or two.
  * Would be nice to have a theme switcher.
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
