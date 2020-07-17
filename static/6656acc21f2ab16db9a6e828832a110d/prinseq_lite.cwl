class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prinseq_lite.pl.cwl
inputs:
- id: help
  doc: ''
  type: boolean
  inputBinding:
    prefix: -help
- id: version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -version
- id: man
  doc: ''
  type: boolean
  inputBinding:
    prefix: -man
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: -verbose
- id: fast_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fastq
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: -fasta
- id: fast_q_two
  doc: ''
  type: string
  inputBinding:
    prefix: -fastq2
- id: input_fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- prinseq-lite.pl
