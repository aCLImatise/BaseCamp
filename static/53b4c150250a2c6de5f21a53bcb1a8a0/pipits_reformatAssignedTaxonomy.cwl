class: CommandLineTool
id: pipits_reformatAssignedTaxonomy.cwl
inputs:
- id: in_in
  doc: '[REQUIRED] taxonomy assignment output from RDP-CLASSIFIER'
  type: string?
  inputBinding:
    prefix: --in
- id: in_out
  doc: '[REQUIRED] reformatted taxonomy assignment file'
  type: File?
  inputBinding:
    prefix: --out
- id: in_minimum_confidence_record
  doc: '[REQUIRED] Minimum confidence to record an assignment'
  type: string?
  inputBinding:
    prefix: -c
- id: in_re_format
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_assignment
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_rdp_classifier_dot
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pipits_reformatAssignedTaxonomy
