class: CommandLineTool
id: erase_annoying_sequences.py.cwl
inputs:
- id: in_input
  doc: Input FASTA file
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output FASTA file of negative sequences
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output FASTA file of negative sequences
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- erase_annoying_sequences.py
