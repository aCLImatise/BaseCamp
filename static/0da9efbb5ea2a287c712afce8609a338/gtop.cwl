class: CommandLineTool
id: gtop.cwl
inputs:
- id: in_apply_weighting_mode
  doc: ': apply asymmetric gap weighting mode.'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_apply_weighting_default
  doc: ': apply symmetric gap weighting mode (default).'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_valuegap_opening_penalty
  doc: "<value>:\ngap opening penalty (default: 4.5)."
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_valuegap_extension_penalty
  doc: "<value>:\ngap extension penalty (default: 0.05)."
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_valuerescaling_factor_default
  doc: "<value>:\nrescaling factor (default: 100)."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_valueoutput_offset_default
  doc: "<value>:\noutput score offset (default: 0).\nAdded to match scores after multiplication\
    \ by the rescaling factor F."
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_as_lhg_efo
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -aslhGEFO
- id: in_gcg_profile
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gtop
