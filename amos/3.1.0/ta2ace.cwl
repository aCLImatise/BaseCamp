class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ta2ace.cwl
inputs:
- id: list_assemblies_put
  doc: List of assemblies to put in .ace file
  type: string
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- ta2ace
