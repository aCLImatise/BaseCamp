class: CommandLineTool
id: igraph_extract_clusters.R.cwl
inputs:
- id: input_i_graph_object
  doc: Path to the input igraph object in rds format.
  type: string
  inputBinding:
    prefix: --input-igraph-object
- id: input_sce_object
  doc: Path to the input SCE object where to add the cluster annotation extracted
    from the igraph objecti.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: output_sce_object
  doc: Path to the output SCE object in rds format with cluster annotation in $cluster.
  type: string
  inputBinding:
    prefix: --output-sce-object
outputs: []
cwlVersion: v1.1
baseCommand:
- igraph_extract_clusters.R
