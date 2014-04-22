;; Specific for Mac OS X
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)


;; Theme / Colors
(load "~/.emacs.d/color-themes/color-theme-vibrant-ink.el")
(color-theme-vibrant-ink)

;; Emacs Pills
;; https://bitbucket.org/arco_group/emacs-pills
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

;; Better ruby-mode
;; https://github.com/zenspider/enhanced-ruby-mode.git
;; must be added after any path containing old ruby-mode
(add-to-list 'load-path "~/.emacs.d/enhanced-ruby-mode")
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
