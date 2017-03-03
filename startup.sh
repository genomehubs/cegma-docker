#!/bin/bash

cp /in/$ASSEMBLY ./

if [[ $ASSEMBLY =~ \.gz$ ]]; then
  gunzip $ASSEMBLY
  ASSEMBLY=${ASSEMBLY%.gz}
fi

cegma -g $ASSEMBLY

if [ -s output.cegma.errors ]; then
  mv  output.completeness_report /out/$ASSEMBLY.completeness_report.txt
  mv  output.cegma.gff /out/$ASSEMBLY.cegma.gff
else
  mv  output.cegma.errors /out/$ASSEMBLY.cegma.errors
fi


