class: CommandLineTool
id: flye_samtools_targetcut.cwl
inputs:
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: "Reference sequence FASTA FILE [null]\n"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_two
  doc: ''
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_zero
  doc: ''
  type: long?
  inputBinding:
    prefix: '-0'
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_q
  doc: ''
  type: long?
  inputBinding:
    prefix: -Q
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target_cut
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
- targetcut
