class: CommandLineTool
id: gmapindex.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0
cwlVersion: v1.1
baseCommand:
- gmapindex
