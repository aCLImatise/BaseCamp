class: CommandLineTool
id: seqtools.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- seqtools.py
