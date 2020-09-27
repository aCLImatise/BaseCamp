class: CommandLineTool
id: itero_check_itero.cwl
inputs:
- id: in_check
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
- itero
- check
- itero
