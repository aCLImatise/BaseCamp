class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/download_mlst_databases.cwl
inputs:
- id: config_file_containing
  doc: Config file containing details of MLST databases from pubMLST
  type: string
  inputBinding:
    prefix: -c
- id: directory_where_mlst
  doc: Directory where MLST databases are stored [$MLST_DATABASES]
  type: string
  inputBinding:
    prefix: -b
- id: print_version_number
  doc: Print version number and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- download_mlst_databases
