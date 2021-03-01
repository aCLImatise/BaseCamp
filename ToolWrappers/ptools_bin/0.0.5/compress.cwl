class: CommandLineTool
id: compress.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- compress
