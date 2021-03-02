class: CommandLineTool
id: cooler_tree.cwl
inputs:
- id: in_uri
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- tree
