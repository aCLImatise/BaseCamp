class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/safety_not_guaranteed.py.cwl
inputs:
- id: reads_dot_fa
  doc: Input FASTA reads. Omit to read from stdin.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- safety-not-guaranteed.py
