class: CommandLineTool
id: download_mlst_databases.cwl
inputs:
- id: c
  doc: Config file containing details of MLST databases from pubMLST
  type: string
  inputBinding:
    prefix: -c
- id: b
  doc: Directory where MLST databases are stored [$MLST_DATABASES]
  type: string
  inputBinding:
    prefix: -b
- id: v
  doc: Print version number and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- download_mlst_databases
