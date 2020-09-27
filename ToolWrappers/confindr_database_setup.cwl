class: CommandLineTool
id: confindr_database_setup.cwl
inputs:
- id: in_output_folder
  doc: "Path to download databases to - if folder does not\nexist, will be created.\
    \ If folder does exist, will be\ndeleted and updated sequences downloaded. Defaults\
    \ to\n~/.confindr_db, or the CONFINDR_DB environmental\nvariable."
  type: Directory
  inputBinding:
    prefix: --output_folder
- id: in_secret_file
  doc: "Path to consumer secret file for rMLST database.\n"
  type: File
  inputBinding:
    prefix: --secret_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Path to download databases to - if folder does not\nexist, will be created.\
    \ If folder does exist, will be\ndeleted and updated sequences downloaded. Defaults\
    \ to\n~/.confindr_db, or the CONFINDR_DB environmental\nvariable."
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- confindr_database_setup
