class: CommandLineTool
id: pyprophet_score_statistics..cwl
inputs:
- id: in_py_prophet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_score
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- pyprophet
- score
- statistics.
