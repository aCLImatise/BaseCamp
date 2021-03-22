class: CommandLineTool
id: get_abundance_post_collapse.py.cwl
inputs:
- id: in_collapse_prefix
  doc: Collapse prefix (must have .group.txt)
  type: string
  inputBinding:
    position: 0
- id: in_cluster_report
  doc: Cluster CSV report
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- get_abundance_post_collapse.py
