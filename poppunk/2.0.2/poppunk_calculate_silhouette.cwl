class: CommandLineTool
id: poppunk_calculate_silhouette.py.cwl
inputs:
- id: distances
  doc: Prefix of input pickle of pre-calculated distances (required)
  type: string
  inputBinding:
    prefix: --distances
- id: cluster_csv
  doc: Cluster assignments
  type: string
  inputBinding:
    prefix: --cluster-csv
- id: cluster_col
  doc: Column with cluster assignment (default = 2)
  type: string
  inputBinding:
    prefix: --cluster-col
- id: id_col
  doc: Column with sample names (default = 1)
  type: string
  inputBinding:
    prefix: --id-col
- id: sub
  doc: Remove string from sample names
  type: string
  inputBinding:
    prefix: --sub
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_calculate_silhouette.py
