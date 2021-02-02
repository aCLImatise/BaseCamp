class: CommandLineTool
id: arb_2_bin.cwl
inputs:
- id: in_create_map_file
  doc: create map file too
  type: boolean
  inputBinding:
    prefix: -m
- id: in_try_repair_database
  doc: try to repair destroyed database
  type: boolean
  inputBinding:
    prefix: -r
- id: in_optimize_database_using
  doc: '[tree_xxx]  optimize database using tree_xxx or largest tree'
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arb_2_bin
