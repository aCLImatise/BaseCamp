class: CommandLineTool
id: ../../../DBdump.cwl
inputs:
- id: r_read_number
  doc: ': R #              - read number'
  type: boolean
  inputBinding:
    prefix: -r
- id: s_string_string
  doc: ': S # string       - sequence string'
  type: boolean
  inputBinding:
    prefix: -s
- id: n_snr_acgt
  doc: ': N # # # #        - SNR of ACGT channels (#/100) A # string       - arrow
    pulse-width string'
  type: boolean
  inputBinding:
    prefix: -a
- id: i_string_vector
  doc: ': I # string       - intrinsic quality vector (as an ASCII string)'
  type: boolean
  inputBinding:
    prefix: -i
- id: d_string_values
  doc: ': d # string       - Quiva deletion values (as an ASCII string) c # string       -
    Quiva deletion character string i # string       - Quiva insertion value string
    m # string       - Quiva merge value string s # string       - Quiva substitution
    value string'
  type: boolean
  inputBinding:
    prefix: -q
- id: p_string_vector
  doc: ': P # string       - repeat profile vector (as an ASCII string)'
  type: boolean
  inputBinding:
    prefix: -p
- id: tx_b_xth
  doc: ": Tx #n (#b #e)^#n - x'th track on command line, #n intervals all on same\
    \ line"
  type: boolean
  inputBinding:
    prefix: -m
- id: dump_entire_database
  doc: ': Dump entire untrimmed database.'
  type: boolean
  inputBinding:
    prefix: -u
- id: output_base_pairs
  doc: ': Output base pairs in upper case letters'
  type: boolean
  inputBinding:
    prefix: -U
- id: rhsa_iqp
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rhsaiqp
- id: uu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -uU
- id: mask
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DBdump
