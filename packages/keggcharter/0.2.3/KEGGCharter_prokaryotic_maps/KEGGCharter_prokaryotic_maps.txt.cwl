class: CommandLineTool
id: KEGGCharter_prokaryotic_maps.txt.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/keggcharter:0.2.3--0
cwlVersion: v1.1
baseCommand:
- KEGGCharter_prokaryotic_maps.txt
