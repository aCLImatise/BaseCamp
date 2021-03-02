class: CommandLineTool
id: chexalign.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chexalign:0.12--0
cwlVersion: v1.1
baseCommand:
- chexalign
