class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compareProts_ClusterHM.pl.cwl
inputs:
- id: minimum_probability
  doc: <minimum probability>
  type: boolean
  inputBinding:
    prefix: -p
- id: minimum_percentage_samples
  doc: <minimum percentage of samples containing each protein>
  type: boolean
  inputBinding:
    prefix: -s
- id: protein_window_size
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
- id: d_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D3
- id: compare_prot_sdot_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: writes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: comparison
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: tab
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: delim
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- compareProts_ClusterHM.pl
