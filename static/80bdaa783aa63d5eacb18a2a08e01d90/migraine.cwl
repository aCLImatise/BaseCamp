class: CommandLineTool
id: migraine.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/migraine:0.6.0--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- migraine
