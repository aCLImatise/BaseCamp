class: CommandLineTool
id: ta2ace.cwl
inputs:
- id: a
  doc: List of assemblies to put in .ace file
  type: string
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- ta2ace
