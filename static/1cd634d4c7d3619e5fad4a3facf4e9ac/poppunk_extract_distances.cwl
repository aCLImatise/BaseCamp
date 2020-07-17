class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/poppunk_extract_distances.py.cwl
inputs:
- id: distances
  doc: Prefix of input pickle and numpy file of pre- calculated distances (required)
  type: string
  inputBinding:
    prefix: --distances
- id: output
  doc: Name of output file
  type: string
  inputBinding:
    prefix: --output
- id: extract_distances
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_extract_distances.py
