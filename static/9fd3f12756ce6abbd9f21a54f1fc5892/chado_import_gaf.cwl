class: CommandLineTool
id: chado_import_gaf.cwl
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
  doc: GFF3 input file
  type: string
  inputBinding:
    prefix: --input_file
- id: abbreviation
  doc: abbreviation/short name of the organism
  type: string
  inputBinding:
    prefix: --abbreviation
- id: annotation_level
  doc: 'level to which GO terms are related in the database (default: same level as
    in the input file)'
  type: string
  inputBinding:
    prefix: --annotation_level
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- import
- gaf
