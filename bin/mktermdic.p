#!/bin/bash

if [ $# -eq 2 ] ; then ${NLPAWK_INSTALLDIR}/bin/mktermdic.p.awk ${1} ${2} > $(mktemp ${NLPAWK_TMPDIR}/nlp.XXXXXXX.termspart) ;fi
rm -rf ${1} ${2}