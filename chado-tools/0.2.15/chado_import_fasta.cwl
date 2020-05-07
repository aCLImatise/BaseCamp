class: CommandLineTool
id: chado_import_fasta.cwl
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
  doc: FASTA input file
  type: string
  inputBinding:
    prefix: --input_file
- id: abbreviation
  doc: abbreviation/short name of the organism
  type: string
  inputBinding:
    prefix: --abbreviation
- id: sequence_type
  doc: 'type of the sequences (default: region)'
  type: string
  inputBinding:
    prefix: --sequence_type
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- import
- fasta
