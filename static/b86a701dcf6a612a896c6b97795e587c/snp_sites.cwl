class: CommandLineTool
id: snp_sites.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
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
outputs: []
cwlVersion: v1.1
baseCommand:
- snp-sites
