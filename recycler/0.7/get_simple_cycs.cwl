class: CommandLineTool
id: ../../../get_simple_cycs.py.cwl
inputs:
- id: input
  doc: Input (SPAdes 3.50+) FASTG to process
  type: string
  inputBinding:
    prefix: --input
- id: min_length
  doc: Minimum cycle length to keep (shorter cycles put in new graph file; default
    = 1000)
  type: long
  inputBinding:
    prefix: --min_length
outputs: []
cwlVersion: v1.1
baseCommand:
- get_simple_cycs.py
