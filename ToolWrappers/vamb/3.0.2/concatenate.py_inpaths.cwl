class: CommandLineTool
id: concatenate.py_inpaths.cwl
inputs:
- id: in_no_zip
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --nozip
- id: in_keep_names
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --keepnames
- id: in_m
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_concatenated_otp_y
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
  dockerPull: quay.io/biocontainers/vamb:3.0.2--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- concatenate.py
- inpaths
