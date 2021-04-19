class: CommandLineTool
id: immune_ml_result_path.cwl
inputs:
- id: in_tool
  doc: ''
  type: string?
  inputBinding:
    prefix: --tool
- id: in_immune_ml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specification_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_result_path
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
  dockerPull: quay.io/biocontainers/immuneml:1.2.4--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- immune-ml
- result_path
