class: CommandLineTool
id: biosed.cwl
inputs:
- id: target_region
  doc: string     [N] Sequence section to match (Any string)
  type: boolean
  inputBinding:
    prefix: -targetregion
outputs: []
cwlVersion: v1.1
baseCommand:
- biosed
