class: CommandLineTool
id: list.modules.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- list.modules
