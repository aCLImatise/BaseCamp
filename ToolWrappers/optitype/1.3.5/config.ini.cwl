class: CommandLineTool
id: config.ini.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/optitype:1.3.5--0
cwlVersion: v1.1
baseCommand:
- config.ini
