class: CommandLineTool
id: pangolearn.py.cwl
inputs:
- id: in_header_file
  doc: ''
  type: File?
  inputBinding:
    prefix: --header-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolin:2.3.8--py_0
cwlVersion: v1.1
baseCommand:
- pangolearn.py
