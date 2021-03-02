class: CommandLineTool
id: scran_build_snn_graph.R.cwl
inputs:
- id: in_input_sce_object
  doc: Path to the input SCE object in rds format.
  type: File?
  inputBinding:
    prefix: --input-sce-object
- id: in_shared
  doc: Logical specifying wether to compute a Shared NN Graph (if shared=TRUE) or
    a kNN Graph(if shared=FALSE).
  type: string?
  inputBinding:
    prefix: --shared
- id: in_k_value
  doc: An integer scalar specifying the number of nearest neighbors to consider during
    graph construction.
  type: long?
  inputBinding:
    prefix: --k-value
- id: in_d_value
  doc: An integer scalar specifying the number of dimensions to use for the search.
  type: long?
  inputBinding:
    prefix: --d-value
- id: in_type
  doc: A string specifying the type of weighting scheme to use for shared neighbors.
  type: string?
  inputBinding:
    prefix: --type
- id: in_transposed
  doc: A logical scalar indicating whether x is transposed (i.e., rows are cells).
  type: string?
  inputBinding:
    prefix: --transposed
- id: in_subset_row
  doc: Logical, integer or character vector specifying the rows for which to model
    the variance. Defaults to all genes in x.
  type: long?
  inputBinding:
    prefix: --subset_row
- id: in_assay_type
  doc: 'A string specifying which assay values to use. Default: logcounts.'
  type: string?
  inputBinding:
    prefix: --assay-type
- id: in_get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string?
  inputBinding:
    prefix: --get-spikes
- id: in_use_dim_red
  doc: A string specifying whether existing values in reducedDims(x) should be used.
  type: string?
  inputBinding:
    prefix: --use-dimred
- id: in_output_i_graph_object
  doc: Path to the output igraph object in RDS format.
  type: File?
  inputBinding:
    prefix: --output-igraph-object
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_i_graph_object
  doc: Path to the output igraph object in RDS format.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_i_graph_object)
hints: []
cwlVersion: v1.1
baseCommand:
- scran-build-snn-graph.R
