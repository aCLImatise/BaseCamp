class: CommandLineTool
id: chewBBACA.py.cwl
inputs:
- id: in_module
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewbbaca:2.6.0--py_0
cwlVersion: v1.1
baseCommand:
- chewBBACA.py
