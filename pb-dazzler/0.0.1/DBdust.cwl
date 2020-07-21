class: CommandLineTool
id: ../../../DBdust.cwl
inputs:
- id: dust_algorithm_window
  doc: ': DUST algorithm window size.'
  type: boolean
  inputBinding:
    prefix: -w
- id: dust_algorithm_threshold
  doc: ': DUST algorithm threshold.'
  type: boolean
  inputBinding:
    prefix: -t
- id: record_only_lowcomplexity
  doc: ': Record only low-complexity intervals >= this size.'
  type: boolean
  inputBinding:
    prefix: -m
- id: take_account_base
  doc: ': Take into account base composition bias.'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- DBdust
