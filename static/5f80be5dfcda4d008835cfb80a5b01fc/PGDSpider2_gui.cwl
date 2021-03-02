class: CommandLineTool
id: PGDSpider2_gui.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pgdspider:2.1.1.5--0
cwlVersion: v1.1
baseCommand:
- PGDSpider2-gui
