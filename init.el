;; Some of this may not be necessary.
;; To be honest though, mu4e finally works for me now and I don't feel like breaking anything
(require 'mu4e)

(setq mu4e-maildir "~/.mail"
      mu4e-attachment-dir "~/downloads"
      mu4e-sent-folder "/Sent"
      mu4e-drafts-folder "/Drafts"
      mu4e-trash-folder "/Trash"
      mu4e-refile-folder "/Archive")

(setq user-mail-address "youraddresshere@protonmail.com"
      user-full-name  "yournamehere")

;; Get mail
(setq mu4e-get-mail-command "mbsync protonmail"
      mu4e-change-filenames-when-moving t   ; needed for mbsync
      mu4e-update-interval 120)             ; update every 2 minutes

;; Send mail
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-auth-credentials "~/.authinfo.gpg"
      smtpmail-smtp-server "127.0.0.1"
      smtpmail-stream-type 'starttls
      smtpmail-smtp-service 1025)
