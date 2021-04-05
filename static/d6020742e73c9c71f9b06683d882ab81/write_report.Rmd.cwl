class: CommandLineTool
id: write_report.Rmd.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aquamis:1.3.4--0
cwlVersion: v1.1
baseCommand:
- write_report.Rmd
