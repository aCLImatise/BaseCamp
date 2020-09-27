class: CommandLineTool
id: igraph_extract_clusters.R.cwl
inputs:
- id: in_input_i_graph_object
  doc: Path to the input igraph object in rds format.
  type: File
  inputBinding:
    prefix: --input-igraph-object
- id: in_input_sce_object
  doc: Path to the input SCE object where to add the cluster annotation extracted
    from the igraph objecti.
  type: File
  inputBinding:
    prefix: --input-sce-object
- id: in_output_sce_object
  doc: Path to the output SCE object in rds format with cluster annotation in $cluster.
  type: File
  inputBinding:
    prefix: --output-sce-object
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sce_object
  doc: Path to the output SCE object in rds format with cluster annotation in $cluster.
  type: File
  outputBinding:
    glob: $(inputs.in_output_sce_object)
cwlVersion: v1.1
baseCommand:
- igraph_extract_clusters.R
