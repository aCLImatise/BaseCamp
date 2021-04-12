class: CommandLineTool
id: Cytoscape.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0
cwlVersion: v1.1
baseCommand:
- Cytoscape
