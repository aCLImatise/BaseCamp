class: CommandLineTool
id: poppunk_add_weights.py.cwl
inputs:
- id: in_graph_ml
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --graphml
- id: in_add_weights
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_distances
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.3.0--py_0
cwlVersion: v1.1
baseCommand:
- poppunk_add_weights.py
