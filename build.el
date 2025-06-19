(require 'ox-publish)
(require 'htmlize)

(setq org-publish-project-alist
      (list
       (list "org-site:main"
             :recursive t
             :base-directory "./content"
             :publishing-function 'org-html-publish-to-html
             :publishing-directory "./public"
             :with-author nil
             :with-creator t
             :with-toc t
             :section-numbers nil
             :time-stamp-file nil)))

(setq python-indent-guess-indent-offset nil)
(setq org-html-validation-link nil
      org-html-htmlize-output-type 'css
      org-html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"https://gongzhitaao.org/orgcss/org.css\"/>")

(org-publish-all t)

(message "Build completed!")

