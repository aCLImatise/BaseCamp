class: CommandLineTool
id: poppunk_extract_distances.py.cwl
inputs:
- id: in_distances
  doc: "Prefix of input pickle and numpy file of pre-\ncalculated distances (required)"
  type: File
  inputBinding:
    prefix: --distances
- id: in_output
  doc: Name of output file
  type: File
  inputBinding:
    prefix: --output
- id: in_extract_distances
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- poppunk_extract_distances.py
