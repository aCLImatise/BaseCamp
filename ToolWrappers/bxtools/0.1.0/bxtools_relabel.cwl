class: CommandLineTool
id: bxtools_relabel.cwl
inputs:
- id: in_verbose
  doc: 'Select verbosity level (0-4). Default: 0'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bxtools
- relabel
