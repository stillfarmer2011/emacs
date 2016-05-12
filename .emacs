;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ` ~/.emacs '
;;; ---------------------
;;;
;;; If you need your own personal ~/.emacs
;;; please make a copy of this file
;;; an placein your changes and/or extension.
;;;
;;; Copyright (c) 1997-2002 SuSE Gmbh Nuernberg, Germany.
;;;
;;; Author: Werner Fink, <feedback@suse.de> 1997,98,99,2002
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Test of Emacs derivates
;;; -----------------------
(if (string-match "XEmacs\\|Lucid" emacs-version)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; XEmacs
  ;;; ------
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (progn
     (if (file-readable-p "~/.xemacs/init.el")
        (load "~/.xemacs/init.el" nil t))
  )
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; GNU-Emacs
  ;;; ---------
  ;;; load ~/.gnu-emacs or, if not exists /etc/skel/.gnu-emacs
  ;;; For a description and the settings see /etc/skel/.gnu-emacs
  ;;;   ... for your private ~/.gnu-emacs your are on your one.
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (if (file-readable-p "~/.gnu-emacs")
      (load "~/.gnu-emacs" nil t)
    (if (file-readable-p "/etc/skel/.gnu-emacs")
	(load "/etc/skel/.gnu-emacs" nil t)))

  ;; Custom Settings
  ;; ===============
  ;; To avoid any trouble with the customization system of GNU emacs
  ;; we set the default file ~/.gnu-emacs-custom
  (setq custom-file "~/.gnu-emacs-custom")
  (load "~/.gnu-emacs-custom" t t)
;;;
)
;;;
;;(setq gtags-suggested-key-mapping t)
;;(setq load-path (cons "/home/wudi/.emacs.d/global" load-path))
(load "~/.emacs.d/custom/custom.el")
(load "~/.emacs.d/custom/key_mapping.el")
;;(autoload 'gtags-mode "gtags" "" t)
;;(setq c-mode-hook
;;          '(lambda ()
;;              (gtags-mode 1)
;;))
;;(put 'upcase-region 'disabled nil)
;;(setq gtags-suggested-key-mapping t)
;;(desktop-save-mode 1
;;)
;;(global-set-key (kbd "M-.") 'gtags-find-tag)
;;(global-set-key (kbd "C-t") 'gtags-pop-stack)
;(global-set-key (kbd "M-,") 'gtags-find-rtag)
;(global-set-key (kbd "M-g M-f") 'gtags-find-file)
;(global-set-key (kbd "M-g M-s") 'gtags-find-symbol)
;(global-set-key (kbd "M-g M-u") 'gtags-update)
