class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chainPreNet.cwl
inputs:
- id: dots
  doc: '- output a dot every so often'
  type: string
  inputBinding:
    prefix: -dots
- id: pad
  doc: '- extra to pad around blocks to decrease trash (default 1)'
  type: string
  inputBinding:
    prefix: -pad
- id: incl_hap
  doc: '- include query sequences name in the form *_hap*|*_alt*. Normally these are
    excluded from nets as being haplotype pseudochromosomes'
  type: boolean
  inputBinding:
    prefix: -inclHap
- id: in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chainPreNet
