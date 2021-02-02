class: CommandLineTool
id: ../../../update_database.cwl
inputs:
- id: in_grid_database_directory
  doc: GRiD database directory (required)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_bacterial_genomes_directory
  doc: Bacterial genomes directory (required)
  type: boolean
  inputBinding:
    prefix: -g
- id: in_prefix_new_database
  doc: Prefix for new database (required)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_path_file_listing
  doc: "Path to file listing specific genomes\nfor inclusion in database [default\
    \ = include all genomes in directory]"
  type: boolean
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- update_database
