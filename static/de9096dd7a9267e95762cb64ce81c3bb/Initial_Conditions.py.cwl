class: CommandLineTool
id: Initial_Conditions.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqsero2:1.2.1--py_0
cwlVersion: v1.1
baseCommand:
- Initial_Conditions.py
