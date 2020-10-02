class: CommandLineTool
id: prepgen.cwl
inputs:
- id: in_rn
  doc: optional
  type: string
  inputBinding:
    prefix: -rn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prepgen
