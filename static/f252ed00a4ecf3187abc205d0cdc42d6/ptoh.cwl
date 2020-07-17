class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ptoh.cwl
inputs:
- id: emulate_domain_
  doc: ': emulate domain- or semi-global alignment mode.'
  type: boolean
  inputBinding:
    prefix: -f
- id: output_set_format
  doc: ': output in SAM format (if not set: HMMER1 format).'
  type: boolean
  inputBinding:
    prefix: -s
- id: emulate_local_mode
  doc: ': emulate local alignment mode.'
  type: boolean
  inputBinding:
    prefix: -F
- id: value_deletetodelete_transition
  doc: '<value>: delete-to-delete transition probabilities (default: 0.9).'
  type: boolean
  inputBinding:
    prefix: -D
- id: value_inserttoinsert_transition
  doc: '<value>: insert-to-insert transition probabilities (default: 0.99).'
  type: boolean
  inputBinding:
    prefix: -I
- id: value_logarithmic_base
  doc: '<value>: logarithmic base (default: 1.0233739).'
  type: boolean
  inputBinding:
    prefix: -L
- id: fhs_fdi_l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fhsFDIL
outputs: []
cwlVersion: v1.1
baseCommand:
- ptoh
