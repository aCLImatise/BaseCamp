class: CommandLineTool
id: mikado_serialise.cwl
inputs:
- id: in_start_method
  doc: ''
  type: string
  inputBinding:
    prefix: --start-method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mikado
- serialise
