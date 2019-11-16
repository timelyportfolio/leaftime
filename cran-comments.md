## Notes

Resubmission

> The Description field is intended to be a (one paragraph) description
of what the package does and why it may be useful. Please elaborate.


Added more detail in the description field


> If there are references describing the methods in your package, please
add these in the description field of your DESCRIPTION file in the form
authors (year) <doi:...>
authors (year) <arXiv:...>
authors (year, ISBN:...)
or if those are not available: <https:...>
with no space after 'doi:', 'arXiv:', 'https:' and angle brackets for
auto-linking.


These are not available


> Are Kent Russell and Kenton Russell the same person? If yes, please be
consistent in the spelling of the name. If not, please credit Kenton
Russell as the copyright holder in your Authors@R field in your
Description file.


Yes, same person so I changed all to Kent Russell


> Jonathan Skeate is credited as copyright holder, which
is not necessary since he is one of the authors and also does not fit
with what you have stated in the LICENSE file. Please correct/explain.


Jonathan Skeate is the author of the javascript.  Based on htmlwidget
best practices with RStudio, I have added CPH for the javascript authors
to all CRAN htmlwidgets I have developeed.  To ease the submission, I have
removed the CPH, but I would appreciate guidance going forward on how
best to handle.


> Please elaborate on your \value documentations in your .Rd files.


I added more detail to the \value or return section for each of the functions.

## Test environments
* local Windows install, R 3.4.3
* rhub::check_for_cran
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

New release 

* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Kent Russell <kent.russell@timelyportfolio.com>'

New submission
