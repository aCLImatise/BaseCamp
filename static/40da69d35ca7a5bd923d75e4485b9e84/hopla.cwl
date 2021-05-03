class: CommandLineTool
id: hopla.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hopla:0.3.1--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- hopla
