class: CommandLineTool
id: mpa_main.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mobidic-mpa:1.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- mpa_main
