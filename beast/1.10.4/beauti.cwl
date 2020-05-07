class: CommandLineTool
id: beauti.cwl
inputs:
- id: advanced
  doc: advanced & developer features
  type: string
  inputBinding:
    prefix: -advanced
- id: version
  doc: the version and credits and stop
  type: string
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- beauti
