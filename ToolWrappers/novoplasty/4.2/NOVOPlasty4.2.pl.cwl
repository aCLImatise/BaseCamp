class: CommandLineTool
id: NOVOPlasty4.2.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/novoplasty:4.2--pl526_0
cwlVersion: v1.1
baseCommand:
- NOVOPlasty4.2.pl
