class: CommandLineTool
id: chado_export_gff.cwl
inputs:
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
  doc: GFF output file
  type: File
  inputBinding:
    prefix: --output_file
- id: in_abbreviation
  doc: abbreviation/short name of the organism
  type: string
  inputBinding:
    prefix: --abbreviation
- id: in_export_fast_a
  doc: export FASTA sequences along with annotations
  type: boolean
  inputBinding:
    prefix: --export_fasta
- id: in_fast_a_file
  doc: "FASTA output file with sequences (default: paste to\nend of GFF file)"
  type: File
  inputBinding:
    prefix: --fasta_file
- id: in_include_obsolete
  doc: export all features, including obsoletes
  type: boolean
  inputBinding:
    prefix: --include_obsolete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: GFF output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_fast_a_file
  doc: "FASTA output file with sequences (default: paste to\nend of GFF file)"
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a_file)
cwlVersion: v1.1
baseCommand:
- chado
- export
- gff
