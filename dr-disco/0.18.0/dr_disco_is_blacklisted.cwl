class: CommandLineTool
id: ../../../dr_disco_is_blacklisted.cwl
inputs:
- id: blacklist_junctions
  doc: Blacklist these region-to-region junctions (custom format, see files in ./share/)
  type: string
  inputBinding:
    prefix: --blacklist-junctions
- id: pos_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pos_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- is-blacklisted
