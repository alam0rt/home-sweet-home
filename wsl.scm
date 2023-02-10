;;; stolen from https://othacehe.org/wsl-images-for-guix-system.html (and modified)
(use-modules (gnu system images wsl2)
             (guix gexp)
             (gnu packages web)
             (gnu services shepherd)
             (gnu services web)
             (srfi srfi-1))

(define (dummy-service _)
  (list
   (shepherd-service
    (documentation "")
    (provision '(loopback))
    (start #~(const #t))
    (stop #~(const #t))
    (respawn? #f))))

(define dummy-service-type
  (service-type
   (name 'loopback)
   (extensions
    (list (service-extension shepherd-root-service-type
                             dummy-service)))
   (default-value '())
   (description "")))

(operating-system
  (inherit wsl-os)
  (services
   (cons*
    (service dummy-service-type)
    (operating-system-user-services wsl-os))))
