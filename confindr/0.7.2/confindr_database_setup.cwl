class: CommandLineTool
id: confindr_database_setup.cwl
inputs:
- id: output_folder
  doc: Path to download databases to - if folder does not exist, will be created.
    If folder does exist, will be deleted and updated sequences downloaded. Defaults
    to ~/.confindr_db, or the CONFINDR_DB environmental variable.
  type: string
  inputBinding:
    prefix: --output_folder
- id: secret_file
  doc: Path to consumer secret file for rMLST database.
  type: string
  inputBinding:
    prefix: --secret_file
outputs: []
cwlVersion: v1.1
baseCommand:
- confindr_database_setup
