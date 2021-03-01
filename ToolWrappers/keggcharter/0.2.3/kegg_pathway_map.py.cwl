class: CommandLineTool
id: kegg_pathway_map.py.cwl
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
- kegg_pathway_map.py
