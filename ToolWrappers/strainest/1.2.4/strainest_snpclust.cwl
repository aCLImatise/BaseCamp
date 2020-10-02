class: CommandLineTool
id: strainest_snpclust.cwl
inputs:
- id: in_snp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dist
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_snp_out
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_clust
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- strainest
- snpclust
