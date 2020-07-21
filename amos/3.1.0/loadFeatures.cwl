class: CommandLineTool
id: ../../../loadFeatures.cwl
inputs:
- id: are_ungapped
  doc: are ungapped
  type: string
  inputBinding:
    prefix: -u
- id: is_the_iid
  doc: is the IID
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- loadFeatures
