class: CommandLineTool
id: DBdump.cwl
inputs:
- id: in_r_read_number
  doc: ': R #              - read number'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_s_string_string
  doc: ': S # string       - sequence string'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_n_snr_string
  doc: ": N # # # #        - SNR of ACGT channels (#/100)\nA # string       - arrow\
    \ pulse-width string"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_i_string_vector
  doc: ': I # string       - intrinsic quality vector (as an ASCII string)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_string_deletion_values
  doc: ": d # string       - Quiva deletion values (as an ASCII string)\nc # string\
    \       - Quiva deletion character string\ni # string       - Quiva insertion\
    \ value string\nm # string       - Quiva merge value string\ns # string      \
    \ - Quiva substitution value string"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_p_string_repeat
  doc: ': P # string       - repeat profile vector (as an ASCII string)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_tx_b_xth
  doc: ": Tx #n (#b #e)^#n - x'th track on command line, #n intervals all on same\
    \ line"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_dump_entire_database
  doc: ': Dump entire untrimmed database.'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_output_base_pairs
  doc: ': Output base pairs in upper case letters'
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_uu
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -uU
- id: in_rhsa_iqp
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -rhsaiqp
- id: in_mask
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DBdump
