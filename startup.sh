#!/bin/bash

cp /in/$ASSEMBLY ./

if [[ $ASSEMBLY =~ \.gz$ ]]; then
  gunzip $ASSEMBLY
  ASSEMBLY=${ASSEMBLY%.gz}
fi

cegma -g $ASSEMBLY



mv  output.completeness_report /out/$ASSEMBLY.cegma.completeness_report.txt
mv  output.cegma.gff /out/$ASSEMBLY.cegma.gff

cat output.cegma.errors
