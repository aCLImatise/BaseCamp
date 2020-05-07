class: CommandLineTool
id: clean_bed.py.cwl
inputs:
- id: input
  doc: The input (sorted) BED file.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output (sorted) BED file.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- clean_bed.py
