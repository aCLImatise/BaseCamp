class: CommandLineTool
id: quick_hierarchical_clustering.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/discosnp:2.5.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- quick_hierarchical_clustering
