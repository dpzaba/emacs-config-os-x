; -*- tab-width:4; fill-column:90; mode:lisp -*-

;| flymake configuration for python-mode (enabled by default).
;| Set pyflakes as Python syntax checker. Run with C-c C-v

(load "flymake.cfg")

; avoid warnings
(declare-function flymake-init-create-temp-buffer-copy "flymake.el")


(defvar flymake-allowed-file-name-masks)
(when (load "flymake" t)
  (defun flymake-python-checker-init ()
	(let* ((temp-file (flymake-init-create-temp-buffer-copy
					   'flymake-create-temp-inplace))
		   (local-file (file-relative-name temp-file
						(file-name-directory buffer-file-name))))

      (list "/usr/share/emacs-pills/pycheckers" (list local-file))))

  (add-to-list 'flymake-allowed-file-name-masks
			   '("\\.py\\'" flymake-python-checker-init)))


(add-hook 'python-mode-hook 'flymake-find-file-hook)


(defun my-flymake-show-help ()
  (when (get-char-property (point) 'flymake-overlay)
   (let ((help (get-char-property (point) 'help-echo)))
    (if help (message "%s" help)))))

(add-hook 'post-command-hook 'my-flymake-show-help)

(defvar python-check-command)
(setq python-check-command "pyflakes")
