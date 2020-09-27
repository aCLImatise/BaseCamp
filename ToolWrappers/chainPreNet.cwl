class: CommandLineTool
id: chainPreNet.cwl
inputs:
- id: in_dots
  doc: '- output a dot every so often'
  type: string
  inputBinding:
    prefix: -dots
- id: in_pad
  doc: "- extra to pad around blocks to decrease trash\n(default 1)"
  type: long
  inputBinding:
    prefix: -pad
- id: in_incl_hap
  doc: "- include query sequences name in the form *_hap*|*_alt*.\nNormally these\
    \ are excluded from nets as being haplotype\npseudochromosomes\n"
  type: boolean
  inputBinding:
    prefix: -inclHap
- id: in_in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chainPreNet
