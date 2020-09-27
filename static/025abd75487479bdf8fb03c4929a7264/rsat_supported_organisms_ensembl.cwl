class: CommandLineTool
id: rsat_supported_organisms_ensembl.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean
  inputBinding:
    prefix: -help
- id: in_db
  doc: 'Supported: ensembl | ensemblgenomes'
  type: string
  inputBinding:
    prefix: -db
- id: in_branch_id
  doc: "Select only species belonging to a given phylogenetic\nbranch, given its taxonomic\
    \ ID."
  type: boolean
  inputBinding:
    prefix: -branch_id
- id: in_output_file_specified
  doc: "Output file. If not specified, the result is printed on the\nstandard output.\n"
  type: File
  inputBinding:
    prefix: -o
- id: in_genomics
  doc: administration
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_specified
  doc: "Output file. If not specified, the result is printed on the\nstandard output.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_specified)
cwlVersion: v1.1
baseCommand:
- rsat
- supported-organisms-ensembl
