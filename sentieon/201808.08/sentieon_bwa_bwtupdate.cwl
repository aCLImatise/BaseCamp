class: CommandLineTool
id: sentieon_bwa_bwtupdate.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bwt_update
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: the_bwt
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- bwtupdate
