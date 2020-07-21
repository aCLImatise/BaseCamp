class: CommandLineTool
id: ../../../flye_samtools_index.cwl
inputs:
- id: generate_baiformat_index
  doc: Generate BAI-format index for BAM files [default]
  type: boolean
  inputBinding:
    prefix: -b
- id: generate_csiformat_index
  doc: Generate CSI-format index for BAM files
  type: boolean
  inputBinding:
    prefix: -c
- id: set_minimum_interval
  doc: Set minimum interval size for CSI indices to 2^INT [14]
  type: long
  inputBinding:
    prefix: -m
- id: at
  doc: Sets the number of threads [none]
  type: long
  inputBinding:
    prefix: -@
- id: bc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bc
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_index
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- index
