class: CommandLineTool
id: FeGenie.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fegenie:1.0--py39r40hdfd78af_0
cwlVersion: v1.1
baseCommand:
- FeGenie.py
