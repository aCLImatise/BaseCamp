class: CommandLineTool
id: chado_import_ontology.cwl
inputs:
- id: dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: config
  doc: YAML file containing connection details
  type: string
  inputBinding:
    prefix: --config
- id: use_password
  doc: 'connect with password (default: no password)'
  type: boolean
  inputBinding:
    prefix: --use_password
- id: input_file
  doc: file containing CV terms
  type: string
  inputBinding:
    prefix: --input_file
- id: input_url
  doc: URL to a file containing CV terms
  type: string
  inputBinding:
    prefix: --input_url
- id: database_authority
  doc: database authority of the terms in the file, e.g. 'GO'
  type: string
  inputBinding:
    prefix: --database_authority
- id: format
  doc: 'format of the file (default: obo)'
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- import
- ontology
