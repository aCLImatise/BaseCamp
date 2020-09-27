class: CommandLineTool
id: ptoh.cwl
inputs:
- id: in_emulate_domain_
  doc: ': emulate domain- or semi-global alignment mode.'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_output_sam_format
  doc: ': output in SAM format (if not set: HMMER1 format).'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_emulate_local_mode
  doc: ': emulate local alignment mode.'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_valuedeletetodelete_transition_probabilities
  doc: "<value>:\ndelete-to-delete transition probabilities (default: 0.9)."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_valueinserttoinsert_transition_probabilities
  doc: "<value>:\ninsert-to-insert transition probabilities (default: 0.99)."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_valuelogarithmic_base_default
  doc: "<value>:\nlogarithmic base (default: 1.0233739)."
  type: boolean
  inputBinding:
    prefix: -L
- id: in_fhs_fdi_l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fhsFDIL
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ptoh
