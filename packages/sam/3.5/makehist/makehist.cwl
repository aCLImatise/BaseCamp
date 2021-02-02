class: CommandLineTool
id: makehist.cwl
inputs:
- id: in_distfile
  doc: .dist    Score file to read (required).
  type: File
  inputBinding:
    prefix: -distfile
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
- makehist
