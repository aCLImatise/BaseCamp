class: CommandLineTool
id: compareProts_ClusterHM.pl.cwl
inputs:
- id: p
  doc: <minimum probability>
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: <minimum percentage of samples containing each protein>
  type: boolean
  inputBinding:
    prefix: -s
- id: w
  doc: <protein window size>
  type: boolean
  inputBinding:
    prefix: -w
- id: np
  doc: Disable Protein Clustering
  type: boolean
  inputBinding:
    prefix: -nP
- id: nf
  doc: Disable File Clustering
  type: boolean
  inputBinding:
    prefix: -nF
outputs: []
cwlVersion: v1.1
baseCommand:
- compareProts_ClusterHM.pl
