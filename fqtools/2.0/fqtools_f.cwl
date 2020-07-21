class: CommandLineTool
id: ../../../fqtools_f.cwl
inputs:
- id: hv_dram_uli
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hvdramuli
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: var_2
  doc: ''
  type: string
  inputBinding:
    prefix: -B
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: var_4
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: var_5
  doc: ''
  type: string
  inputBinding:
    prefix: -F
- id: fq_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fqtools
- f
