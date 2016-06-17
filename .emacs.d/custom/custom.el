;;  for plugin/global gtags
(load "~/github/emacs/.emacs.d/plugin/global/gtags.el")
(autoload 'gtags-mode "gtags" "" t)

;; for desktop save, open the file , the cursor will appear where it closed before
;;(desktop-save-mode 1)

;;(let ((autosave-path "~/.emacs.d/auto-save-list")) (dolist (autosave-file (directory-files autosave-path nil "^#")) (rename-file (concat autosave-path "/" autosave-file) (concat "/tmp/" autosave-file))))
