class: CommandLineTool
id: poppunk_calculate_silhouette.py.cwl
inputs:
- id: in_distances
  doc: "Prefix of input pickle of pre-calculated distances\n(required)"
  type: string?
  inputBinding:
    prefix: --distances
- id: in_cluster_csv
  doc: Cluster assignments
  type: string?
  inputBinding:
    prefix: --cluster-csv
- id: in_cluster_col
  doc: Column with cluster assignment (default = 2)
  type: long?
  inputBinding:
    prefix: --cluster-col
- id: in_id_col
  doc: Column with sample names (default = 1)
  type: long?
  inputBinding:
    prefix: --id-col
- id: in_sub
  doc: Remove string from sample names
  type: string?
  inputBinding:
    prefix: --sub
- id: in_calculate_silhouette
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- poppunk_calculate_silhouette.py
