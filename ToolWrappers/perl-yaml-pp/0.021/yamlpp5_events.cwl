class: CommandLineTool
id: ../../../yamlpp5_events.cwl
inputs:
- id: in_str
  doc: ''
  type: boolean
  inputBinding:
    prefix: -STR
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- yamlpp5-events
