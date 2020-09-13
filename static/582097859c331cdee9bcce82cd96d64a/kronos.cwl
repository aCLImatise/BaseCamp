class: CommandLineTool
id: ../../../kronos.cwl
inputs:
- id: in_working_dir
  doc: path to the working dir
  type: File
  inputBinding:
    prefix: --working_dir
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kronos
