class: CommandLineTool
id: safety_not_guaranteed.py.cwl
inputs:
- id: in_reads_dot_fa
  doc: Input FASTA reads. Omit to read from stdin.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- safety-not-guaranteed.py
