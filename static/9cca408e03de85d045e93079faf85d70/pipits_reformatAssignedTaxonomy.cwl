class: CommandLineTool
id: ../../../pipits_reformatAssignedTaxonomy.cwl
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
- id: minimum_confidence_record
  doc: '[REQUIRED] Minimum confidence to record an assignment'
  type: string
  inputBinding:
    prefix: -c
- id: re_format
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: assignment
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: rdp_classifier_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_reformatAssignedTaxonomy
