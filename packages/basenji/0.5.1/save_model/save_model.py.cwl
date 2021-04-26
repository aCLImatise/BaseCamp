class: CommandLineTool
id: save_model.py.cwl
inputs:
- id: in_trunk
  doc: 'Save only trunk [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --trunk
- id: in_params_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_model_file
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
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- save_model.py
