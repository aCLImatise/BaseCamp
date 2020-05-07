class: CommandLineTool
id: fermi_chkbwt.cwl
inputs:
- id: idx_base_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m
  doc: load the FM-index as a memory mapped file
  type: boolean
  inputBinding:
    prefix: -M
- id: r
  doc: check rank
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: print the BWT to the stdout
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- chkbwt
