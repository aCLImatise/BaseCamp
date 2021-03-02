class: CommandLineTool
id: .dfast_pre_unlink.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dfast:1.2.12--h8b12597_0
cwlVersion: v1.1
baseCommand:
- .dfast-pre-unlink.sh
