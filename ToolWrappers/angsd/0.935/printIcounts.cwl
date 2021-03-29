class: CommandLineTool
id: printIcounts.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/angsd:0.935--hd2e4403_0
cwlVersion: v1.1
baseCommand:
- printIcounts
