class: CommandLineTool
id: treesapp.cwl
inputs:
- id: in_command
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/treesapp:0.10.1--py36hf1ae8f4_0
cwlVersion: v1.1
baseCommand:
- treesapp
