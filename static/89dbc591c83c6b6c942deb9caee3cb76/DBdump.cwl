class: CommandLineTool
id: DBdump.cwl
inputs:
- id: r
  doc: ': R #              - read number'
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: ': S # string       - sequence string'
  type: boolean
  inputBinding:
    prefix: -s
- id: a
  doc: ': N # # # #        - SNR of ACGT channels (#/100) A # string       - arrow
    pulse-width string'
  type: boolean
  inputBinding:
    prefix: -a
- id: i
  doc: ': I # string       - intrinsic quality vector (as an ASCII string)'
  type: boolean
  inputBinding:
    prefix: -i
- id: q
  doc: ': d # string       - Quiva deletion values (as an ASCII string) c # string       -
    Quiva deletion character string i # string       - Quiva insertion value string
    m # string       - Quiva merge value string s # string       - Quiva substitution
    value string'
  type: boolean
  inputBinding:
    prefix: -q
- id: p
  doc: ': P # string       - repeat profile vector (as an ASCII string)'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: ": Tx #n (#b #e)^#n - x'th track on command line, #n intervals all on same\
    \ line"
  type: boolean
  inputBinding:
    prefix: -m
- id: u
  doc: ': Dump entire untrimmed database.'
  type: boolean
  inputBinding:
    prefix: -u
- id: u
  doc: ': Output base pairs in upper case letters'
  type: boolean
  inputBinding:
    prefix: -U
outputs: []
cwlVersion: v1.1
baseCommand:
- DBdump
