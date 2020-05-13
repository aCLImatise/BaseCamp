class: CommandLineTool
id: dr_disco_is_blacklisted_OPTIONS_POS1_POS2.cwl
inputs:
- id: blacklist_junctions
  doc: Blacklist these region-to-region junctions (custom format, see files in ./share/)
  type: string
  inputBinding:
    prefix: --blacklist-junctions
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- is-blacklisted
- OPTIONS
- POS1
- POS2
