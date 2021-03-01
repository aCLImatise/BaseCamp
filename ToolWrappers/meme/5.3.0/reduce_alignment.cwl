class: CommandLineTool
id: reduce_alignment.cwl
inputs:
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_width
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- reduce-alignment
