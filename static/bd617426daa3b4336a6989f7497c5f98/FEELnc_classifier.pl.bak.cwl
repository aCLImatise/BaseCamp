class: CommandLineTool
id: FEELnc_classifier.pl.bak.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/feelnc:0.2--pl526_0
cwlVersion: v1.1
baseCommand:
- FEELnc_classifier.pl.bak
