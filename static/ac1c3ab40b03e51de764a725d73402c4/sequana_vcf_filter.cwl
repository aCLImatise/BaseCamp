class: CommandLineTool
id: sequana_vcf_filter.cwl
inputs:
- id: only
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
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
- id: '41'
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: now
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: filter
  doc: '"AF1>0.95&AF1<0.05"'
  type: boolean
  inputBinding:
    prefix: --filter
- id: filter
  doc: '"MQ<30"'
  type: boolean
  inputBinding:
    prefix: --filter
- id: filter
  doc: '"DP<30"'
  type: boolean
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_vcf_filter
