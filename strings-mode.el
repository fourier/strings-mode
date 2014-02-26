;;; strings-mode.el --- Major mode for OSX and iOS strings files

;; Copyright (C) 2014 Alexey Veretennikov
;;
;; Author: Alexey Veretennikov <alexey dot veretennikov at gmail dot com>
;; Created: 2014-02-26
;; Version: 1.0.0
;; URL: https://github.com/fourier/strings-mode
;; Compatibility: GNU Emacs 23.x, GNU Emacs 24.x
;;
;; This file is NOT part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; This mode provides simple syntax highlighting for the OSX/iOS
;; strings files, typically named like 'Localizable.strings'
;; Usage:
;; Add the following to your .emacs file:
;; 
;; (require 'strings-mode)
;; (setq auto-mode-alist (cons '("\\.strings\\'" . strings-mode)
;;                              auto-mode-alist))
;;
;;; Issues:
;;
;;; TODO:
;; 
;;; Change Log:
;; 
;; 2014-02-26 (1.0.0)
;;    Initial Release.
;;
;;; Code:

(setq strings-mode-keywords
  (list
   '("/\\*\\([^\\*]\\|[\r\n]\\|\\(\*+\\([^*/]\\|[\r\n]\\)\\)\\)*\\*+/" . font-lock-comment-face)
   '("\\(=\\|;\\)" . font-lock-operator-face)
   ))

;;;###autoload
(define-derived-mode strings-mode fundamental-mode
  (setq font-lock-defaults '(strings-mode-keywords))
  (setq mode-name "iOS strings")
)


(provide 'strings-mode)
;;; strings-mode.el ends here
