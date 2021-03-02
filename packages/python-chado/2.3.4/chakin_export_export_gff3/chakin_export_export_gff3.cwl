class: CommandLineTool
id: chakin_export_export_gff3.cwl
inputs:
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- chakin
- export
- export_gff3
