class: CommandLineTool
id: gdtools_APPLY.cwl
inputs:
- id: in_output
  doc: Output file name (DEFAULT=output.*)
  type: File
  inputBinding:
    prefix: --output
- id: in_format
  doc: 'Output file format (Options: FASTA, GFF3) (DEFAULT=FASTA)'
  type: File
  inputBinding:
    prefix: --format
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File
  inputBinding:
    prefix: --reference
- id: in_verbose
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name (DEFAULT=output.*)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_format
  doc: 'Output file format (Options: FASTA, GFF3) (DEFAULT=FASTA)'
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- gdtools
- APPLY
