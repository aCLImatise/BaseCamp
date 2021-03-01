class: CommandLineTool
id: chado_export_fasta.cwl
inputs:
- id: in_verbose
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_config
  doc: YAML file containing connection details
  type: File?
  inputBinding:
    prefix: --config
- id: in_use_password
  doc: 'connect with password (default: no password)'
  type: boolean?
  inputBinding:
    prefix: --use_password
- id: in_output_file
  doc: FASTA output file
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_abbreviation
  doc: abbreviation/short name of the organism
  type: string?
  inputBinding:
    prefix: --abbreviation
- id: in_sequence_type
  doc: type of the sequences to be exported
  type: string?
  inputBinding:
    prefix: --sequence_type
- id: in_release
  doc: name of the FASTA release
  type: string?
  inputBinding:
    prefix: --release
- id: in_include_obsolete
  doc: export all features, including obsoletes
  type: boolean?
  inputBinding:
    prefix: --include_obsolete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: FASTA output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- chado
- export
- fasta
