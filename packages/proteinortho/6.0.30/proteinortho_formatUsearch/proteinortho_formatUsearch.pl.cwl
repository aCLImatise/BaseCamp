class: CommandLineTool
id: proteinortho_formatUsearch.pl.cwl
inputs:
- id: in_format_udot_pl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0
cwlVersion: v1.1
baseCommand:
- proteinortho_formatUsearch.pl
