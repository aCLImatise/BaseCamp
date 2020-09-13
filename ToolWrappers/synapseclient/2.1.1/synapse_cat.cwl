class: CommandLineTool
id: ../../../synapse_cat.cwl
inputs:
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- cat
