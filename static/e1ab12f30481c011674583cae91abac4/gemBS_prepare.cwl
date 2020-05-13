class: CommandLineTool
id: gemBS_prepare.cwl
inputs:
- id: config
  doc: Text config file with gemBS parameters.
  type: string
  inputBinding:
    prefix: --config
- id: text_metadata
  doc: Sample metadata in csv file. See documentation for description of file format.
  type: string
  inputBinding:
    prefix: --text-metadata
- id: output
  doc: Output JSON file. See documentation for description of file format.
  type: string
  inputBinding:
    prefix: --output
- id: no_db
  doc: Do not use disk base database.
  type: boolean
  inputBinding:
    prefix: --no-db
- id: db_file
  doc: Specify location for database file.
  type: string
  inputBinding:
    prefix: --db-file
- id: lims_c_nag_json
  doc: Lims CNAG subproject JSON file.
  type: string
  inputBinding:
    prefix: --lims-cnag-json
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- prepare
