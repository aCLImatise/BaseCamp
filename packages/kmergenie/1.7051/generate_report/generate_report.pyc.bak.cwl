class: CommandLineTool
id: generate_report.pyc.bak.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0
cwlVersion: v1.1
baseCommand:
- generate_report.pyc.bak
