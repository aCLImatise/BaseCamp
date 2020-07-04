class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ptof.cwl
inputs:
- id: impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: parameters_given_normalized
  doc: ': parameters given as normalized score units.'
  type: boolean
  inputBinding:
    prefix: -r
- id: value_minimal_initiationtermination
  doc: '<value>: minimal initiation/termination score (default: -50 or -0.5 with option
    -r).'
  type: boolean
  inputBinding:
    prefix: -B
- id: value_frameshift_error
  doc: '<value>: frameshift error penalty (default: -100 or -1.0 with option -r).'
  type: boolean
  inputBinding:
    prefix: -F
- id: value_insert_score
  doc: '<value>: insert score multiplier (default: 1/3).'
  type: boolean
  inputBinding:
    prefix: -I
- id: value_stop_default
  doc: '<value>: stop codon penalty (default: -100 or -1.0 with option -r).'
  type: boolean
  inputBinding:
    prefix: -X
- id: value_intron_default
  doc: '<value>: intron opening penalty (default: -300 or -3.0 with option -r).'
  type: boolean
  inputBinding:
    prefix: -Y
- id: value_intron_extension
  doc: '<value>: intron extension penalty (default: -1 or -0.01 with option -r).'
  type: boolean
  inputBinding:
    prefix: -Z
- id: hlr_bfi_xyz
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hlrBFIXYZ
outputs: []
cwlVersion: v1.1
baseCommand:
- ptof
