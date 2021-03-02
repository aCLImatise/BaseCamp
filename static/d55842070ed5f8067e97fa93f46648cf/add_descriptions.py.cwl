class: CommandLineTool
id: add_descriptions.py.cwl
inputs:
- id: in_input
  doc: Input function abundance table.
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Output function abundance table with added description\ncolumn. If the extension\
    \ \".gz\" is added the table will\nautomatically be gzipped."
  type: File?
  inputBinding:
    prefix: --output
- id: in_map_type
  doc: "Specifies which default mapping table should be used.\nUse the --custom_map_table\
    \ option to input a non-\ndefault mapping table."
  type: string?
  inputBinding:
    prefix: --map_type
- id: in_custom_map_table
  doc: "An input map table linking function ids to\ndescriptions for each function."
  type: File?
  inputBinding:
    prefix: --custom_map_table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- add_descriptions.py
