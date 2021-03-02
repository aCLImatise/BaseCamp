class: CommandLineTool
id: ppanini_rename_contigs.cwl
inputs:
- id: in_input
  doc: fasta file
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "fasta file\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ppanini_rename_contigs
