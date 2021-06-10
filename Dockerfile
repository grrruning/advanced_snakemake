FROM snakemake/snakemake:v6.3.0


ADD . /tmp/repo
RUN mv /tmp/repo/data/data_table.tsv /tmp/repo/chipseq-smk-pipeline-edu/config
RUN mkdir -p /tmp/repo/chipseq-smk-pipeline-edu/resources/indexes/hg19
RUN mv /tmp/repo/data/hg19.fa.gz /tmp/repo/chipseq-smk-pipeline-edu/resources/indexes/hg19 || true
RUN cp -r /tmp/repo/data/reads /tmp/repo/chipseq-smk-pipeline-edu/reads
WORKDIR /tmp/repo/chipseq-smk-pipeline-edu


