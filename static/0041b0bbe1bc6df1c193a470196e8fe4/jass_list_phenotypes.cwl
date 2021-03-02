class: CommandLineTool
id: jass_list_phenotypes.cwl
inputs:
- id: in_in_it_table_path
  doc: "path to the initial data file, default is the\nconfigured path (JASS_DATA_DIR/initTable.hdf5)\n"
  type: File?
  inputBinding:
    prefix: --init-table-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jass
- list-phenotypes
