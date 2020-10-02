class: CommandLineTool
id: wtdbgConvert.cwl
inputs:
- id: in_output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
- id: in_file_dot_dbg_dot_lay
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wtdbgConvert
