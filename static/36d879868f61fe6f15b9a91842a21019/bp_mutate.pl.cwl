class: CommandLineTool
id: bp_mutate.pl.cwl
inputs:
- id: in_percent
  doc: mutagenized
  type: string?
  inputBinding:
    prefix: --percent
- id: in_number
  doc: Number of mutant sequences created
  type: boolean?
  inputBinding:
    prefix: --number
- id: in_output
  doc: Output file (optional)
  type: File?
  inputBinding:
    prefix: --output
- id: in_format
  doc: 'Output format (default: fasta)'
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_input
  doc: Input file
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_bioperl_lat_bioperl_dot_org
  doc: '- General discussion'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (optional)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_mutate.pl
