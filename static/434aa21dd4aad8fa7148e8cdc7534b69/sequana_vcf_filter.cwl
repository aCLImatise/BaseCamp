class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequana_vcf_filter.cwl
inputs:
- id: only
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: using
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: version
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: four_dot_one
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: now
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_vcf_filter
