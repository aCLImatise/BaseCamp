class: CommandLineTool
id: download_mlst_databases.cwl
inputs:
- id: in_config_file_containing
  doc: Config file containing details of MLST databases from pubMLST
  type: File?
  inputBinding:
    prefix: -c
- id: in_directory_where_databases
  doc: Directory where MLST databases are stored [$MLST_DATABASES]
  type: Directory?
  inputBinding:
    prefix: -b
- id: in_print_version_number
  doc: Print version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- download_mlst_databases
