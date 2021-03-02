class: CommandLineTool
id: format_fasta.cwl
inputs:
- id: in_input_fast_a
  doc: Path to input fasta.
  type: File?
  inputBinding:
    prefix: --inputfasta
- id: in_output_fast_a
  doc: "Path to output fasta.\n"
  type: File?
  inputBinding:
    prefix: --outputfasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fast_a
  doc: "Path to output fasta.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a)
hints: []
cwlVersion: v1.1
baseCommand:
- format_fasta
