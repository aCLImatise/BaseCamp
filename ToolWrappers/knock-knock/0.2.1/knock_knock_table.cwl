class: CommandLineTool
id: knock_knock_table.cwl
inputs:
- id: in_group
  doc: "if specified, the single group name to generate tables\nfor; if not specified,\
    \ all groups will be generated\n"
  type: string?
  inputBinding:
    prefix: --group
- id: in_project_directory
  doc: "the base directory to store input data, reference\nannotations, and analysis\
    \ output for a project"
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
- knock-knock
- table
