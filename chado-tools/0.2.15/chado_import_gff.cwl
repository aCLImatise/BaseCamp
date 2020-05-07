class: CommandLineTool
id: chado_import_gff.cwl
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
- id: fast_a
  doc: FASTA input file with sequences
  type: string
  inputBinding:
    prefix: --fasta
- id: sequence_type
  doc: 'type of the FASTA sequences, if present (default: region)'
  type: string
  inputBinding:
    prefix: --sequence_type
- id: fresh_load
  doc: 'load a genome from scratch (default: load an update to an existing genome)'
  type: boolean
  inputBinding:
    prefix: --fresh_load
- id: force
  doc: in case of a fresh load, purge all existing features of the organism
  type: boolean
  inputBinding:
    prefix: --force
- id: full_genome
  doc: in case of an update, mark features not present in the input file as obsolete
  type: boolean
  inputBinding:
    prefix: --full_genome
- id: full_attributes
  doc: in case of an update, delete feature attributes not present in the input file
  type: boolean
  inputBinding:
    prefix: --full_attributes
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- import
- gff
