class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_important_factors.py.cwl
inputs:
- id: in
  doc: Input file
  type: File
  inputBinding:
    prefix: -in
- id: filter
  doc: Filter
  type: string
  inputBinding:
    prefix: -filter
- id: output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_important_factors.py
