class: CommandLineTool
id: mikado_util_util.cwl
inputs:
- id: in_mikado
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mikado
- util
- util
