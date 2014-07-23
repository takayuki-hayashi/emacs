;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; [PKG管理] パッケージ取得先追加
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq load-path (cons "~/lisp/" load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; [基本] 背景色・透過
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 背景色設定
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#000022" :foreground "#EEEEEE" :family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal))))
 '(cursor ((((class color) (background dark)) (:background "#00AA00")) (((class color) (background light)) (:background "#999999")) (t nil))))
;; フレーム透過設定
;;(add-to-list 'default-frame-alist '(alpha . (0.75 0.75)))


;;起動時のフレームサイズを設定する
(setq initial-frame-alist
      (append (list
        '(width . 170)
        '(height . 120)
        )
        initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

;; 起動画面を表示しない
(setq inhibit-splash-screen t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Ctrl + H をBack spaceに割り当て
(global-set-key "\C-h" 'backward-delete-char)

;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

(global-set-key (kbd "C-<f7>") 'speedbar-get-focus)

(setq speedbar-show-unknown-files t)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;タブをスペース2つに変換
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default tab-width 2 indent-tabs-mode nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;タブ機能
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;(require 'tabbar)
;;;;(tabbar-mode)
;;;;(global-set-key "\M-]" 'tabbar-forward)  ; 次のタブ
;;;;(global-set-key "\M-[" 'tabbar-backward) ; 前のタブ
;; タブ上でマウスホイールを使わない
;;;;(tabbar-mwheel-mode nil)
;; グループを使わない
;;;;(setq tabbar-buffer-groups-function nil)
;; 左側のボタンを消す
;;;;(dolist (btn '(tabbar-buffer-home-button
;;;;               tabbar-scroll-left-button
;;;;               tabbar-scroll-right-button))
;;;;  (set btn (cons (cons "" nil)
;;;;                 (cons "" nil))))
;; 色設定
;;;;(set-face-attribute ; バー自体の色
;;;;  'tabbar-default nil
;;;;   :background "white"
;;;;   :family "Inconsolata"
;;;;   :height 1.0)
;;;;(set-face-attribute ; アクティブなタブ
;;;;  'tabbar-selected nil
;;;;   :background "black"
;;;;   :foreground "white"
;;;;   :weight 'bold
;;;;   :box nil)
;;;;(set-face-attribute ; 非アクティブなタブ
;;;;  'tabbar-unselected nil
;;;;   :background "white"
;;;;   :foreground "black"
;;;;   :box nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;
;; ツールバーを消す
;;;;;;;;;;;;;;;;::::
(tool-bar-mode -1)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;sass-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

;; インデント幅を2にする
;; コンパイルは compass watchで行うので自動コンパイルをオフ
(defun scss-custom ()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   (set (make-local-variable 'scss-compile-at-save) nil)
   )
  )
(add-hook 'scss-mode-hook
  '(lambda() (scss-custom)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
