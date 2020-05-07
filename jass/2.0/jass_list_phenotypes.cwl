class: CommandLineTool
id: jass_list_phenotypes.cwl
inputs:
- id: in_it_table_path
  doc: path to the initial data file, default is the configured path (JASS_DATA_DIR/initTable.hdf5)
  type: string
  inputBinding:
    prefix: --init-table-path
outputs: []
cwlVersion: v1.1
baseCommand:
- jass
- list-phenotypes
