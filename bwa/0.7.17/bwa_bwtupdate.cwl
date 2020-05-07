class: CommandLineTool
id: bwa_bwtupdate.cwl
inputs:
- id: the_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- bwtupdate
