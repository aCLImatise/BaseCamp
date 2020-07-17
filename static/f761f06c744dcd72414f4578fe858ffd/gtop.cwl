class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gtop.cwl
inputs:
- id: apply_asymmetric_gap
  doc: ': apply asymmetric gap weighting mode.'
  type: boolean
  inputBinding:
    prefix: -a
- id: apply_symmetric_gap
  doc: ': apply symmetric gap weighting mode (default).'
  type: boolean
  inputBinding:
    prefix: -s
- id: impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: value_gap_opening
  doc: '<value>: gap opening penalty (default: 4.5).'
  type: boolean
  inputBinding:
    prefix: -G
- id: value_gap_extension
  doc: '<value>: gap extension penalty (default: 0.05).'
  type: boolean
  inputBinding:
    prefix: -E
- id: value_rescaling_factor
  doc: '<value>: rescaling factor (default: 100).'
  type: boolean
  inputBinding:
    prefix: -F
- id: value_output_score
  doc: '<value>: output score offset (default: 0).  Added to match scores after multiplication
    by the rescaling factor F.'
  type: boolean
  inputBinding:
    prefix: -O
- id: as_lhg_efo
  doc: ''
  type: boolean
  inputBinding:
    prefix: -aslhGEFO
- id: gcg_profile
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gtop
