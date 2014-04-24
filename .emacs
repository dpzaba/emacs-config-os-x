;; Specific for Mac OS X
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
;; Use command as the meta key; option key as super
;; (setq ns-command-modifier 'meta)
;; (setq ns-option-modifier 'super)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; lines number
(linum-mode 1)
;; tabs
(setq c-basic-indent 2)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
;; temporal files
(setq backup-directory-alist '(("." . "~/.emacs.d/emacs-backups")))
;; Trash can support
(setq delete-by-moving-to-trash t)
;; no scroll bars
(toggle-scroll-bar -1)

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

;; https://github.com/technomancy/better-defaults/

;; https://github.com/bbatsov/projectile

;; https://github.com/grundprinzip/sublemacspro

;; Backups and temporal files
;; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
;; https://snarfed.org/gnu_emacs_backup_files
;; http://stackoverflow.com/a/18330742
;; http://www.emacswiki.org/emacs/BackupDirectory

;; Reload files (auto revert)
;; C-x C-v RET
;; (global-auto-revert-mode t)
;; http://ubuntuforums.org/showthread.php?t=1735237

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

;; http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
