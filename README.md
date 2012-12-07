# Accoutrement Etc.

These are just assorted functions and mixins I use on my projects.
Maybe some of them will develop in to more legit Things,
but for now thye are just normal things.

If they are documented,
that's merely an excercise in good code practice,
and doesn't imply that they are useful.

Some of these things are stolen and re-worked from other projects,
notably [toolkit][] by [snugug][] and [canarymason][]
who are very smart.

[toolkit]: https://github.com/Snugug/toolkit
[snugug]: https://github.com/Snugug/
[canarymason]: https://github.com/canarymason/

List of Things
--------------

### Arrows

**Settings:**

- `$default-arrow-position       : top         !default;`
- `$default-arrow-offset         : center      !default;`
- `$default-arrow-size           : 1em         !default;`
- `$default-arrow-color          : gray        !default;`
- `$default-arrow-border-size    : null        !default;`
- `$default-arrow-border-color   : null        !default;`

**Mixins:**

- `arrow-base()`
- `arrow([$arrow, $border, $positioning])`

### Background

**Functions:**
- `convert-gradient-angle($deg)`:
- `convert-linear($angle, $details...)`:
- `stripes($position, $colors)`
- `get-palette($color [, $tints, $shades])`

**Mixins:**
- `gradient-background-image($gradient...)`:
- `palette($color [, $tints, $shades])`

### Color

*The brightness and contrast functions are based on
a [codepen demo][text-contrast] by Brendan Saunders.
The idea of color-stacks comes from [toolkit][],
though I've made some alterations to fit into my own process.*

**Settings**:
- `$contrasted-dark-default   : black                 !default;`
- `$contrasted-light-default  : white                 !default;`
- `$default-amounts           : 20% 40% 60% 70% 80%   !default;`
- `$default-tints             : $default-amounts      !default;`
- `$default-shades            : $default-amounts      !default;`

**Functions:**
- `brightness($color)`
- `contrast($color [, $contrast])`
- `color-stack($main, $second [, $amounts])`
- `tint-stack($color [, $amounts])`
- `shade-stack($color [, $amounts])`
- `color($color [, $alpha, $tints, $shades])`

[text-contrast]: http://codepen.io/bluesaunders/details/FCLaz

### Math

**Functions:**
- `mod($dividend, $divisor)`

### Media

*These are also adapted from [toolkit][].*

**Settings:**
- `$default-fluid-width           : max-width 100%  !default;`
- `$default-fluid-elements        : 'img, video'    !default;`
- `$default-fluid-ratio           : 16/9            !default;`
- `$default-fluid-ratio-width     : 100%            !default;`
- `$default-fluid-ratio-children  : '*'             !default;`

**Mixins:**
- `fluid-media([$width, $elements])`
- `fluid-ratio([$ratio, $width, $children])`

### Pseudo-Elements

**Mixins:**
- `@include before($content)`
- `@include after($content)`
- `@include wrap-content($content)`

### Rhythm

**Functions:**
- `px-to-rhythm($px [, $from, $round])`
- `rhythm-image($image [, $from, $round])`

### Sass Lists

**Functions:**
- `reverse($list)`
- `remove-duplicates($list)`
- `filter($list, $target)`

### Tabs

**Settings:**
- `$default-checked-selector : ':checked'      !default;`
- `$default-nested-selectors : null            !default;`
- `$toggle-attribute         : id              !default;`
- `$title-attribute          : for             !default;`
- `$content-attribute        : class           !default;`

**Mixins:**
- `@include tab-defaults`
- `@include make-tabs($slugs [, $nested, $checked])`

### Type

**Settings:**
- `$default-dropcap-size           : $base-font-size * 2   !default;`
- `$default-dropcap-lines          : false                 !default;`
- `$default-dropcap-padding        : null                  !default;`
- `$default-dropcap-font-family    : null                  !default;`

**Mixins:**
- `dropcap([$size, $lines, $padding, $from-size]) { @content }`

License
-------

Copyright © Eric Meyer.

Original code licensed under MIT/GLPv2
Open Source projects used within this project retain their original licenses.

GPL license: http://www.gnu.org/licenses/gpl.html

MIT license: http://www.opensource.org/licenses/mit-license.php