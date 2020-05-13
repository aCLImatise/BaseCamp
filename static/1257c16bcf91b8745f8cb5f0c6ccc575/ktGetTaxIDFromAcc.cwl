class: CommandLineTool
id: ktGetTaxIDFromAcc.cwl
inputs:
- id: p
  doc: Prepend tax IDs to the original lines (separated by tabs).
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: Append tax IDs to the original lines (separated by tabs).
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- ktGetTaxIDFromAcc
