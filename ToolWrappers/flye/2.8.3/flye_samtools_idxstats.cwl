class: CommandLineTool
id: flye_samtools_idxstats.cwl
inputs:
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_threads
  doc: "Number of additional threads to use [0]\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_idx_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- idxstats
