class: CommandLineTool
id: consensus.py.cwl
inputs:
- id: in_alignment
  doc: "The aligned sequences, in FASTA format (but no multi-line\nsequences)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- consensus.py
