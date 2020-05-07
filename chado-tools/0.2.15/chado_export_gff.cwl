class: CommandLineTool
id: chado_export_gff.cwl
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
  doc: GFF output file
  type: string
  inputBinding:
    prefix: --output_file
- id: abbreviation
  doc: abbreviation/short name of the organism
  type: string
  inputBinding:
    prefix: --abbreviation
- id: export_fast_a
  doc: export FASTA sequences along with annotations
  type: boolean
  inputBinding:
    prefix: --export_fasta
- id: fast_a_file
  doc: 'FASTA output file with sequences (default: paste to end of GFF file)'
  type: string
  inputBinding:
    prefix: --fasta_file
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
- gff
