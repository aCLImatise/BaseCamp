class: CommandLineTool
id: chado_export_gaf.cwl
inputs:
- id: in_dbname
  doc: "[-L {default,gene,transcript,protein}]\n[--include_obsolete]\ndbname"
  type: string
  inputBinding:
    prefix: -A
- id: in_verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_config
  doc: YAML file containing connection details
  type: File
  inputBinding:
    prefix: --config
- id: in_use_password
  doc: 'connect with password (default: no password)'
  type: boolean
  inputBinding:
    prefix: --use_password
- id: in_output_file
  doc: GAF output file
  type: File
  inputBinding:
    prefix: --output_file
- id: in_abbreviation
  doc: abbreviation/short name of the organism
  type: string
  inputBinding:
    prefix: --abbreviation
- id: in_database_authority
  doc: "database from which the file is created, e.g.\n'UniProtKB'"
  type: File
  inputBinding:
    prefix: --database_authority
- id: in_annotation_level
  doc: "level to which GO terms are related in the output file\n(default: same level\
    \ as in the database)"
  type: File
  inputBinding:
    prefix: --annotation_level
- id: in_include_obsolete
  doc: export all features, including obsoletes
  type: boolean
  inputBinding:
    prefix: --include_obsolete
- id: in_dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: GAF output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_annotation_level
  doc: "level to which GO terms are related in the output file\n(default: same level\
    \ as in the database)"
  type: File
  outputBinding:
    glob: $(inputs.in_annotation_level)
cwlVersion: v1.1
baseCommand:
- chado
- export
- gaf
