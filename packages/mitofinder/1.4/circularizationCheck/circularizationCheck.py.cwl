class: CommandLineTool
id: circularizationCheck.py.cwl
inputs:
- id: in_fast_a_file
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
  dockerPull: quay.io/biocontainers/mitofinder:1.4--py27h516909a_0
cwlVersion: v1.1
baseCommand:
- circularizationCheck.py
