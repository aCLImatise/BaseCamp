class: CommandLineTool
id: get_abundance_post_collapse.py.cwl
inputs:
- id: collapse_prefix
  doc: Collapse prefix (must have .group.txt)
  type: string
  inputBinding:
    position: 0
- id: cluster_report
  doc: Cluster CSV report
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get_abundance_post_collapse.py
