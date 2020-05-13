class: CommandLineTool
id: jass_create_inittable.cwl
inputs:
- id: input_data_path
  doc: path to the GWAS data file (ImpG format) to import. the path must be specify
    between quotes
  type: string
  inputBinding:
    prefix: --input-data-path
- id: in_it_covariance_path
  doc: path to the covariance file to import
  type: string
  inputBinding:
    prefix: --init-covariance-path
- id: regions_map_path
  doc: path to the genome regions map (BED format) to import
  type: string
  inputBinding:
    prefix: --regions-map-path
- id: description_file_path
  doc: path to the GWAS studies metadata file
  type: string
  inputBinding:
    prefix: --description-file-path
- id: in_it_table_path
  doc: path to the initial data file to produce, default is the configured path (JASS_DATA_DIR/initTable.hdf5)
  type: string
  inputBinding:
    prefix: --init-table-path
outputs: []
cwlVersion: v1.1
baseCommand:
- jass
- create-inittable
