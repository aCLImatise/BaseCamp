class: CommandLineTool
id: flye_samtools_flagstat.cwl
inputs:
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_threads
  doc: "Number of additional threads to use [0]\n"
  type: long
  inputBinding:
    prefix: --threads
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flag_stat
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
cwlVersion: v1.1
baseCommand:
- flye-samtools
- flagstat
