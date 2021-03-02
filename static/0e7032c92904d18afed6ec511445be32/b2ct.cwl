class: CommandLineTool
id: b2ct.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- b2ct
