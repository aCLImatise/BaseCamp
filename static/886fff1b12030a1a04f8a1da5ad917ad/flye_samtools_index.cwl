class: CommandLineTool
id: flye_samtools_index.cwl
inputs:
- id: in_generate_baiformat_index
  doc: Generate BAI-format index for BAM files [default]
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_generate_csiformat_index
  doc: Generate CSI-format index for BAM files
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_set_minimum_interval
  doc: Set minimum interval size for CSI indices to 2^INT [14]
  type: long?
  inputBinding:
    prefix: -m
- id: in_at
  doc: Sets the number of threads [none]
  type: long?
  inputBinding:
    prefix: -@
- id: in_bc
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -bc
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_dot_index
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- index
