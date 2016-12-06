#!/bin/bash
j=0; for i in *.pdf; do j=$(( $(pdfinfo "$i" | grep Pages | cut -d ' ' -f11 ) + $j ));  done; echo $j
