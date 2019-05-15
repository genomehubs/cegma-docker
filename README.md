## CEGMA docker container

CEGMA docker container built from [hub.docker.com/r/robsyme/cegma-docker](https://hub.docker.com/r/robsyme/cegma-docker/)
with modifications to make it easier to use as a GenomeHubs container by running as UID 1000, separating input and output 
directories and renaming output files.

```
docker run -d \
           --name cegma-test \
           -v `pwd`/sequence:/in \
           -v `pwd`/cegma:/out \
           -e ASSEMBLY=scaffolds.fa.gz \
           -e THREADS=16 \
           genomehubs/cegma:latest
```

Writes `scaffolds.fa.completeness_report.txt` and `scaffolds.fa.cegma.gff` to the directoy mounted at `/out`.
