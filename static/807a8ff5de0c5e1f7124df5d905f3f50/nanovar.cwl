class: CommandLineTool
id: nanovar.cwl
inputs:
- id: in_data_type
  doc: "type of long-read data [ont]\nont - Oxford Nanopore Technologies\npacbio-clr\
    \ - Pacific Biosciences CLR\npacbio-ccs - Pacific Biosciences CCS"
  type: string?
  inputBinding:
    prefix: --data_type
- id: in_filter_bed
  doc: "BED file with genomic regions to be excluded [None]\n(e.g. telomeres and centromeres)\
    \ Either specify name of in-built\nreference genome filter (i.e. hg38, hg19, mm10)\
    \ or provide full\npath to own BED file."
  type: File?
  inputBinding:
    prefix: --filter_bed
- id: in_min_cov
  doc: minimum number of reads required to call a breakend [2]
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_min_len
  doc: minimum length of SV to be detected [25]
  type: long?
  inputBinding:
    prefix: --minlen
- id: in_split_pct
  doc: "minimum percentage of unmapped bases within a long read\nto be considered\
    \ as a split-read. 0.05<=p<=0.50 [0.05]"
  type: double?
  inputBinding:
    prefix: --splitpct
- id: in_min_align
  doc: minimum alignment length for single alignment reads [200]
  type: long?
  inputBinding:
    prefix: --minalign
- id: in_buffer
  doc: nucleotide length buffer for SV breakend clustering [50]
  type: long?
  inputBinding:
    prefix: --buffer
- id: in_score
  doc: "score threshold for defining PASS/FAIL SVs in VCF [1.0]\nDefault score 1.0\
    \ was estimated from simulated analysis."
  type: double?
  inputBinding:
    prefix: --score
- id: in_homo
  doc: "lower limit of a breakend read ratio to classify a homozygous state [0.75]\n\
    (i.e. Any breakend with homo<=ratio<=1.00 is classified as homozygous)"
  type: double?
  inputBinding:
    prefix: --homo
- id: in_hetero
  doc: "lower limit of a breakend read ratio to classify a heterozygous state [0.35]\n\
    (i.e. Any breakend with hetero<=ratio<homo is classified as heterozygous)"
  type: double?
  inputBinding:
    prefix: --hetero
- id: in_debug
  doc: run in debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_force
  doc: run full pipeline (i.e. do not skip index generation)
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: hide verbose
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: number of available threads for use [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_model
  doc: specify path to custom-built model
  type: File?
  inputBinding:
    prefix: --model
- id: in_mm
  doc: specify path to 'minimap2' executable
  type: File?
  inputBinding:
    prefix: --mm
- id: in_st
  doc: specify path to 'samtools' executable
  type: File?
  inputBinding:
    prefix: --st
- id: in_mdb
  doc: specify path to 'makeblastdb' executable
  type: File?
  inputBinding:
    prefix: --mdb
- id: in_wmk
  doc: specify path to 'windowmasker' executable
  type: File?
  inputBinding:
    prefix: --wmk
- id: in_hsb
  doc: specify path to 'hs-blastn' executable
  type: File?
  inputBinding:
    prefix: --hsb
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nanovar:1.3.9--py36h4c5857e_0
cwlVersion: v1.1
baseCommand:
- nanovar
