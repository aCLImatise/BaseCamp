class: CommandLineTool
id: nebulizer_list_libraries.cwl
inputs:
- id: in_use_long_format
  doc: "use a long listing format that includes descriptions, file sizes,\ndbkeys\
    \ and paths)"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_show_id
  doc: include internal Galaxy IDs for data libraries, folders and
  type: boolean
  inputBinding:
    prefix: --show_id
- id: in_datasets_dot
  doc: --help     Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_libraries
