class: CommandLineTool
id: samtools_index.cwl
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
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_index
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.12--hd5e65b6_0
cwlVersion: v1.1
baseCommand:
- samtools
- index
