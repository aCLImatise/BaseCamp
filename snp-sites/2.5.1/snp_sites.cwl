class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snp_sites.cwl
inputs:
- id: rmv_pc_bhv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rmvpcbhV
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- snp-sites
