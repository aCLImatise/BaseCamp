class: CommandLineTool
id: ktImportMGRAST.cwl
inputs:
- id: in_mgr_ast_table
  doc: "A table exported from MG-RAST. It can be from organism or\nfunctional analysis,\
    \ but all tables being imported should be\nconsistent. By default, separate datasets\
    \ will be created for\neach input (see [-c])."
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: "A name to show in the list of datasets in the Krona chart (if\nmultiple input\
    \ files are present and [-c] is not specified).\nBy default, the basename of the\
    \ file will be used.\n_________"
  type: string
  inputBinding:
    position: 1
- id: in_e_value_dot
  doc: '[-u <string>]   URL of Krona resources to use instead of bundling them with'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ktImportMGRAST
