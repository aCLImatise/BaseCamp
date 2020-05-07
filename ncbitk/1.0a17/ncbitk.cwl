class: CommandLineTool
id: ncbitk.cwl
inputs:
- id: status
  doc: Show the current status of your genome collection
  type: boolean
  inputBinding:
    prefix: --status
outputs: []
cwlVersion: v1.1
baseCommand:
- ncbitk
