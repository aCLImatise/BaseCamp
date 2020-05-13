class: CommandLineTool
id: locarnap_realign_all.pl.cwl
inputs:
- id: lo_carnap_realign_all
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotation_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- locarnap-realign-all.pl
