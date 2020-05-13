class: CommandLineTool
id: DBdust.cwl
inputs:
- id: w
  doc: ': DUST algorithm window size.'
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: ': DUST algorithm threshold.'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: ': Record only low-complexity intervals >= this size.'
  type: boolean
  inputBinding:
    prefix: -m
- id: b
  doc: ': Take into account base composition bias.'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- DBdust
