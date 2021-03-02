class: CommandLineTool
id: template.ini.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/parsnp:1.5.4--he513fc3_0
cwlVersion: v1.1
baseCommand:
- template.ini
