class: CommandLineTool
id: centrifuge_BuildSharedSequence.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0
cwlVersion: v1.1
baseCommand:
- centrifuge-BuildSharedSequence.pl
