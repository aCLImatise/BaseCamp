class: CommandLineTool
id: make_template.cwl
inputs:
- id: in_align_file
  doc: ': Aligned sequences to read.'
  type: File
  inputBinding:
    prefix: -alignfile
- id: in_option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: in_run_name
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
- make_template
