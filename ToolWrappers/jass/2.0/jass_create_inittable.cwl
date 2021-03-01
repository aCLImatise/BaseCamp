class: CommandLineTool
id: jass_create_inittable.cwl
inputs:
- id: in_input_data_path
  doc: "path to the GWAS data file (ImpG format) to import.\nthe path must be specify\
    \ between quotes"
  type: File?
  inputBinding:
    prefix: --input-data-path
- id: in_in_it_covariance_path
  doc: path to the covariance file to import
  type: File?
  inputBinding:
    prefix: --init-covariance-path
- id: in_regions_map_path
  doc: path to the genome regions map (BED format) to import
  type: File?
  inputBinding:
    prefix: --regions-map-path
- id: in_description_file_path
  doc: path to the GWAS studies metadata file
  type: File?
  inputBinding:
    prefix: --description-file-path
- id: in_in_it_table_path
  doc: "path to the initial data file to produce, default is\nthe configured path\
    \ (JASS_DATA_DIR/initTable.hdf5)\n"
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
- create-inittable
