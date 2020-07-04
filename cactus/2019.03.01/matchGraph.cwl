class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/matchGraph.py.cwl
inputs:
- id: is_input_filename
  doc: is the input filename
  type: string
  inputBinding:
    prefix: -e
- id: is_output_filename
  doc: is the output filename
  type: string
  inputBinding:
    prefix: -w
- id: max_cardinality_matching
  doc: the max cardinality matching
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- matchGraph.py
