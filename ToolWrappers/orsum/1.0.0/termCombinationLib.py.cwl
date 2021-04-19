class: CommandLineTool
id: termCombinationLib.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/orsum:1.0.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- termCombinationLib.py
