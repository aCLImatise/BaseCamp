class: CommandLineTool
id: nanovar.cwl
inputs:
- id: data_type
  doc: type of long-read data [ont] ont - Oxford Nanopore Technologies pacbio-clr
    - Pacific Biosciences CLR pacbio-ccs - Pacific Biosciences CCS
  type: string
  inputBinding:
    prefix: --data_type
- id: filter_bed
  doc: BED file with genomic regions to be excluded [None] (e.g. telomeres and centromeres)
    Either specify name of in-built  reference genome filter (i.e. hg38, hg19, mm10)
    or provide full  path to own BED file.
  type: File
  inputBinding:
    prefix: --filter_bed
- id: min_cov
  doc: minimum number of reads required to call a breakend [2]
  type: long
  inputBinding:
    prefix: --mincov
- id: min_len
  doc: minimum length of SV to be detected [25]
  type: long
  inputBinding:
    prefix: --minlen
- id: split_pct
  doc: minimum percentage of unmapped bases within a long read  to be considered as
    a split-read. 0.05<=p<=0.50 [0.05]
  type: double
  inputBinding:
    prefix: --splitpct
- id: min_align
  doc: minimum alignment length for single alignment reads [200]
  type: long
  inputBinding:
    prefix: --minalign
- id: buffer
  doc: nucleotide length buffer for SV breakend clustering [50]
  type: long
  inputBinding:
    prefix: --buffer
- id: score
  doc: 'score threshold for defining PASS/FAIL SVs in VCF [1.0] Default score 1.0
    was estimated from simulated analysis. '
  type: double
  inputBinding:
    prefix: --score
- id: homo
  doc: lower limit of a breakend read ratio to classify a homozygous state [0.75]
    (i.e. Any breakend with homo<=ratio<=1.00 is classified as homozygous)
  type: double
  inputBinding:
    prefix: --homo
- id: hetero
  doc: lower limit of a breakend read ratio to classify a heterozygous state [0.35]
    (i.e. Any breakend with hetero<=ratio<homo is classified as heterozygous)
  type: double
  inputBinding:
    prefix: --hetero
- id: debug
  doc: run in debug mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: force
  doc: run full pipeline (i.e. do not skip index generation)
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: hide verbose
  type: boolean
  inputBinding:
    prefix: --quiet
- id: threads
  doc: number of available threads for use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: model
  doc: specify path to custom-built model
  type: File
  inputBinding:
    prefix: --model
- id: mm
  doc: specify path to 'minimap2' executable
  type: File
  inputBinding:
    prefix: --mm
- id: st
  doc: specify path to 'samtools' executable
  type: File
  inputBinding:
    prefix: --st
- id: mdb
  doc: specify path to 'makeblastdb' executable
  type: File
  inputBinding:
    prefix: --mdb
- id: wmk
  doc: specify path to 'windowmasker' executable
  type: File
  inputBinding:
    prefix: --wmk
- id: hsb
  doc: specify path to 'hs-blastn' executable
  type: File
  inputBinding:
    prefix: --hsb
outputs: []
cwlVersion: v1.1
baseCommand:
- nanovar
