class: CommandLineTool
id: ete3.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ete3:3.1.2
cwlVersion: v1.1
baseCommand:
- ete3
