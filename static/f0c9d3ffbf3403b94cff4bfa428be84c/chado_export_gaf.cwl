class: CommandLineTool
id: chado_export_gaf.cwl
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
- id: output_file
  doc: GAF output file
  type: string
  inputBinding:
    prefix: --output_file
- id: abbreviation
  doc: abbreviation/short name of the organism
  type: string
  inputBinding:
    prefix: --abbreviation
- id: database_authority
  doc: database from which the file is created, e.g. 'UniProtKB'
  type: string
  inputBinding:
    prefix: --database_authority
- id: annotation_level
  doc: 'level to which GO terms are related in the output file (default: same level
    as in the database)'
  type: string
  inputBinding:
    prefix: --annotation_level
- id: include_obsolete
  doc: export all features, including obsoletes
  type: boolean
  inputBinding:
    prefix: --include_obsolete
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- export
- gaf
