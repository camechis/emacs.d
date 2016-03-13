(prelude-require-package 'neotree)
(prelude-require-package 'gradle-mode)
(prelude-require-package 'groovy-mode)
(prelude-require-package 'ensime)
(prelude-require-package 'emacs-eclim)
(prelude-require-package 'clj-refactor)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(require 'eclim)
(require 'clj-refactor)
(global-eclim-mode)
(require 'eclimd)
(setq ad-redefinition-action 'accept)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Source Code Pro")))))
