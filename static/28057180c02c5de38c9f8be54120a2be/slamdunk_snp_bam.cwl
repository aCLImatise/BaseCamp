class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/slamdunk_snp_bam.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: slam_dunk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: snp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- slamdunk
- snp
- bam
