Description
===============

This mode provides simple syntax highlighting for the OSX/iOS strings files, typically named like **Localizable.strings** or **Info.strings**. See [Apple documentation](https://developer.apple.com/library/mac/documentation/cocoa/conceptual/loadingresources/Strings/Strings.html) for details.

Usage
=====

Add the following to your .emacs file:

```scheme
(require 'strings-mode)
(setq auto-mode-alist (cons '("\\.strings\\'" . strings-mode)
                            auto-mode-alist))
```

