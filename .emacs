;; Specific for Mac OS X
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Reload files (auto revert)
;; http://ubuntuforums.org/showthread.php?t=1735237
;; C-x C-v RET
(global-auto-revert-mode t)
;; no scroll bars
(toggle-scroll-bar -1)
;; lines number
(linum-mode t)
;; tabs
(setq c-basic-indent 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
;; temporal / backup files
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backups")))
(setq make-backup-files t               ; backup of a file the first time it is saved.
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backup files silently
      delete-by-moving-to-trash t
      kept-old-versions 6               ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9               ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t               ; auto-save every buffer that visits a file
      auto-save-timeout 30              ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 300            ; number of keystrokes between auto-saves (default: 300)
      )

;; Theme / Colors
(load "~/.emacs.d/color-themes/color-theme-vibrant-ink.el")
(color-theme-vibrant-ink)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Pills
;; https://bitbucket.org/arco_group/emacs-pills
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "~/.emacs.d/emacs-pills/config/global-zoom.cfg.el")
(load "~/.emacs.d/emacs-pills/config/minimal.cfg.el")
(load "~/.emacs.d/emacs-pills/config/move-line-or-region.cfg.el")
(load "~/.emacs.d/emacs-pills/config/strip.cfg.el")
(load "~/.emacs.d/emacs-pills/config/uniquify.cfg.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Projects
;; https://github.com/bbatsov/projectile
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ;; ("marmalade" . "http://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa.milkbox.net/packages/")))

;; required to install projectile, flx-ido
;; (projectile-global-mode t)
;; (setq projectile-indexing-method 'alien) ;; don't use lisp

;; using flx-ido for fuzzy and more flexible autocompletion
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
;; (setq ido-use-faces nil)

;; shortcut for Super key
;; (define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
;; (define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
;; (define-key projectile-mode-map [?\s-f] 'projectile-find-file)
;; (define-key projectile-mode-map [?\s-g] 'projectile-grep)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Haml
;; https://github.com/nex3/haml-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/haml-mode")
(require 'haml-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ruby Specifics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Better ruby-mode
;; Git project => submodule
;; https://github.com/zenspider/enhanced-ruby-mode.git
;; must be added after any path containing old ruby-mode
(add-to-list 'load-path "~/.emacs.d/enhanced-ruby-mode")
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
;; to keep ruby-mode indent
;; 2nd tab will put back (to enhanced-ruby-mode)
(setq enh-ruby-bounce-deep-indent -1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CoffeeScript
;; https://github.com/defunkt/coffee-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(defun coffee-custom ()
  "coffee-mode-hook"
  ;; Emacs key binding for Aquamacs
  (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer))

(add-hook 'coffee-mode-hook '(lambda () (coffee-custom)))





;; More liks

;; https://github.com/technomancy/better-defaults/

;; https://github.com/bbatsov/projectile
;; https://github.com/bbatsov/prelude
;; https://github.com/grundprinzip/sublemacspro

;; Backups and temporal files
;; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
;; https://snarfed.org/gnu_emacs_backup_files
;; http://stackoverflow.com/a/18330742
;; http://www.emacswiki.org/emacs/BackupDirectory

;; http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
