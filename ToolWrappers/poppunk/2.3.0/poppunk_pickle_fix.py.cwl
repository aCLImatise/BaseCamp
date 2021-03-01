class: CommandLineTool
id: poppunk_pickle_fix.py.cwl
inputs:
- id: in_pickle_fix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pickle
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
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
  dockerPull: quay.io/biocontainers/poppunk:2.3.0--py_0
cwlVersion: v1.1
baseCommand:
- poppunk_pickle_fix.py
