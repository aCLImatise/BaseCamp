class: CommandLineTool
id: add_descriptions.py.cwl
inputs:
- id: input
  doc: Input function abundance table.
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: Output function abundance table with added description column. If the extension
    ".gz" is added the table will automatically be gzipped.
  type: File
  inputBinding:
    prefix: --output
- id: map_type
  doc: Specifies which default mapping table should be used. Use the --custom_map_table
    option to input a non- default mapping table.
  type: string
  inputBinding:
    prefix: --map_type
- id: custom_map_table
  doc: An input map table linking function ids to descriptions for each function.
  type: File
  inputBinding:
    prefix: --custom_map_table
outputs: []
cwlVersion: v1.1
baseCommand:
- add_descriptions.py
