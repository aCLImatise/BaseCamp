class: CommandLineTool
id: ptof.cwl
inputs:
- id: in_impose_limit_line
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_parameters_given_normalized
  doc: ': parameters given as normalized score units.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_valueminimal_initiationtermination_score
  doc: "<value>:\nminimal initiation/termination score (default: -50 or -0.5 with\
    \ option -r)."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_valueframeshift_error_penalty
  doc: "<value>:\nframeshift error penalty (default: -100 or -1.0 with option -r)."
  type: boolean
  inputBinding:
    prefix: -F
- id: in_valueinsert_score_multiplier
  doc: "<value>:\ninsert score multiplier (default: 1/3)."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_valuestop_codon_penalty
  doc: "<value>:\nstop codon penalty (default: -100 or -1.0 with option -r)."
  type: boolean
  inputBinding:
    prefix: -X
- id: in_valueintron_opening_penalty
  doc: "<value>:\nintron opening penalty (default: -300 or -3.0 with option -r)."
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_valueintron_extension_penalty
  doc: "<value>:\nintron extension penalty (default: -1 or -0.01 with option -r)."
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_hlr_bfi_xyz
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hlrBFIXYZ
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ptof
