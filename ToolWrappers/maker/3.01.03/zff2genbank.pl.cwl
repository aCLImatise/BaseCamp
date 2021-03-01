class: CommandLineTool
id: zff2genbank.pl.cwl
inputs:
- id: in_export_dot_ann
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- zff2genbank.pl
