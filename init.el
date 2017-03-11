;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; [PKG管理] パッケージ取得先追加
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

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


;;;;;;;;;;;;;;;;;;;;
;; ツールバーを消す
;;;;;;;;;;;;;;;;::::
(tool-bar-mode -1)
