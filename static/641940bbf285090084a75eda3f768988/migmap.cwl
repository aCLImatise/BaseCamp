class: CommandLineTool
id: ../../../migmap.cwl
inputs:
- id: number_reads_take
  doc: Number of reads to take. [default = all]
  type: long
  inputBinding:
    prefix: -n
- id: number_cores_use
  doc: Number of cores to use. [default = all available processors]
  type: long
  inputBinding:
    prefix: -p
- id: threshold_average_nregions
  doc: Threshold for average quality of mutations and N-regions of CDR3 [default =
    25]
  type: string
  inputBinding:
    prefix: -q
- id: chain_receptor_gene
  doc: '<chain1,...>                        Receptor gene and chain. Several chains
    can be specified, separated with commas. Allowed values: [TRA, TRB, TRG, TRD,
    IGH, IGL, IGK]. [required] --report <file>                     File to store MIGMAP
    report. Will append report line if file exists.'
  type: boolean
  inputBinding:
    prefix: -R
- id: species_allowed_values
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
- id: input_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- migmap
