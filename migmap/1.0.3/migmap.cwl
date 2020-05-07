class: CommandLineTool
id: migmap.cwl
inputs:
- id: n
  doc: Number of reads to take. [default = all]
  type: long
  inputBinding:
    prefix: -n
- id: p
  doc: Number of cores to use. [default = all available processors]
  type: long
  inputBinding:
    prefix: -p
- id: q
  doc: <2..40>                             Threshold for average quality of mutations
    and N-regions of CDR3 [default = 25]
  type: boolean
  inputBinding:
    prefix: -q
- id: r
  doc: '<chain1,...>                        Receptor gene and chain. Several chains
    can be specified, separated with commas. Allowed values: [TRA, TRB, TRG, TRD,
    IGH, IGL, IGK]. [required] --report <file>                     File to store MIGMAP
    report. Will append report line if file exists.'
  type: boolean
  inputBinding:
    prefix: -R
- id: s
  doc: 'Species. Allowed values: [human, mouse, rat, rabbit, rhesus_monkey]. [required]'
  type: string
  inputBinding:
    prefix: -S
- id: unmapped
  doc: <fastq[.gz]>             Output unmapped reads in specified file.
  type: boolean
  inputBinding:
    prefix: --unmapped
- id: use_kabat
  doc: Will use KABAT nomenclature for CDR/FW partitioning. [default = use IMGT nomenclature]
  type: boolean
  inputBinding:
    prefix: --use-kabat
outputs: []
cwlVersion: v1.1
baseCommand:
- migmap
