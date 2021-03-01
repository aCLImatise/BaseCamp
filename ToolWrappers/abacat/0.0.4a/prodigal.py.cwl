class: CommandLineTool
id: prodigal.py.cwl
inputs:
- id: in_input
  doc: Input FASTA file or dir containing fasta files
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Path to output folder\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to output folder\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- prodigal.py
