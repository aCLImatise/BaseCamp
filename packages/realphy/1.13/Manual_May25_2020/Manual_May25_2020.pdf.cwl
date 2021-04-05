class: CommandLineTool
id: Manual_May25_2020.pdf.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/realphy:1.13--0
cwlVersion: v1.1
baseCommand:
- Manual_May25_2020.pdf
