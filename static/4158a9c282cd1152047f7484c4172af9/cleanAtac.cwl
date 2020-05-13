class: CommandLineTool
id: cleanAtac.cwl
inputs:
- id: d
  doc: discard the match if it is below this percent identity
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- cleanAtac
