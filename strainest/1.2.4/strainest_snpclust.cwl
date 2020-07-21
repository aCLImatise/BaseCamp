class: CommandLineTool
id: ../../../strainest_snpclust.cwl
inputs:
- id: snp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dist
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: snp_out
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: clust
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- strainest
- snpclust
