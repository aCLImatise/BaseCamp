class: CommandLineTool
id: poppunk_extract_components.py.cwl
inputs:
- id: in_graph
  doc: Input graph pickle (.gt)
  type: string?
  inputBinding:
    prefix: --graph
- id: in_output
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --output
- id: in_extract_components
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_extract_components.py
