class: CommandLineTool
id: pipits_reformatAssignedTaxonomy.cwl
inputs:
- id: in
  doc: '[REQUIRED] taxonomy assignment output from RDP-CLASSIFIER'
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: '[REQUIRED] reformatted taxonomy assignment file'
  type: string
  inputBinding:
    prefix: --out
- id: c
  doc: '[REQUIRED] Minimum confidence to record an assignment'
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_reformatAssignedTaxonomy
