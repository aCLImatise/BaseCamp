class: CommandLineTool
id: edit_gff_table.cwl
inputs:
- id: in_verbose
  doc: "Attribute used to search the table defaults to\n`uid`"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_attribute
  doc: Attribute to add/change  [required]
  type: string?
  inputBinding:
    prefix: --attribute
- id: in_only_edited
  doc: Only output edited annotations
  type: boolean?
  inputBinding:
    prefix: --only-edited
- id: in_skip_rows
  doc: Number of rows to skip at the start of the file
  type: long?
  inputBinding:
    prefix: --skip-rows
- id: in_separator
  doc: Fields separator, default to `TAB`
  type: string?
  inputBinding:
    prefix: --separator
- id: in_comment
  doc: "Characters for comments in file (eg '#').\ndefaults to None"
  type: File?
  inputBinding:
    prefix: --comment
- id: in_table_file
  doc: '[required]'
  type: File?
  inputBinding:
    prefix: --table-file
- id: in_key_index
  doc: "Which field in the table is the key value\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --key-index
- id: in_attr_index
  doc: "Which field in the table is the attribute value\n[default: 1]"
  type: long?
  inputBinding:
    prefix: --attr-index
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- edit-gff
- table
