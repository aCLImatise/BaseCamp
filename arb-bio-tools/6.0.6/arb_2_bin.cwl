class: CommandLineTool
id: ../../../arb_2_bin.cwl
inputs:
- id: create_map_file
  doc: create map file too
  type: boolean
  inputBinding:
    prefix: -m
- id: try_repair_destroyed
  doc: try to repair destroyed database
  type: boolean
  inputBinding:
    prefix: -r
- id: optimize_database_using
  doc: '[tree_xxx]  optimize database using tree_xxx or largest tree'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_2_bin
