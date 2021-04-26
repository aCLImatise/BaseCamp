class: CommandLineTool
id: seqfu.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.9.5--h38613fd_0
cwlVersion: v1.1
baseCommand:
- seqfu
