class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/split_sequences.py.cwl
inputs:
- id: threshold
  doc: Split based on this threshold of length
  type: string
  inputBinding:
    prefix: --threshold
- id: input
  doc: INPUT sequence file (default=None)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: OUTPUT prefix, will write fragmentary file to OUTPUT.frag.fas and full-length
    file to OUTPUT.full.fas (default=output)
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- split_sequences.py
