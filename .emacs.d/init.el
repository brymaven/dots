(custom-set-variables
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window


(setenv "PATH" (concat (getenv "PATH") "/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(add-hook 'after-init-hook 'global-company-mode)

;; Use Vue Mode
(require 'vue-mode)

;; JS mode
(setq js-indent-level 2)
(setq js2-indent-level 2)
(setq-default indent-tabs-mode nil)

;; Haskell
(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(setq haskell-process-type 'stack-ghci)

;;; Company
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda ()
                               (ghc-init)
                               (add-to-list (make-local-variable 'company-backends) 'company-ghc)))
