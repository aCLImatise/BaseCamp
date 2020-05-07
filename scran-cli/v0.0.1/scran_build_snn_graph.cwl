class: CommandLineTool
id: scran_build_snn_graph.R.cwl
inputs:
- id: input_sce_object
  doc: Path to the input SCE object in rds format.
  type: string
  inputBinding:
    prefix: --input-sce-object
- id: shared
  doc: Logical specifying wether to compute a Shared NN Graph (if shared=TRUE) or
    a kNN Graph(if shared=FALSE).
  type: string
  inputBinding:
    prefix: --shared
- id: k_value
  doc: An integer scalar specifying the number of nearest neighbors to consider during
    graph construction.
  type: string
  inputBinding:
    prefix: --k-value
- id: d_value
  doc: An integer scalar specifying the number of dimensions to use for the search.
  type: string
  inputBinding:
    prefix: --d-value
- id: type
  doc: A string specifying the type of weighting scheme to use for shared neighbors.
  type: string
  inputBinding:
    prefix: --type
- id: transposed
  doc: A logical scalar indicating whether x is transposed (i.e., rows are cells).
  type: string
  inputBinding:
    prefix: --transposed
- id: subset_row
  doc: Logical, integer or character vector specifying the rows for which to model
    the variance. Defaults to all genes in x.
  type: string
  inputBinding:
    prefix: --subset_row
- id: assay_type
  doc: 'A string specifying which assay values to use. Default: logcounts.'
  type: string
  inputBinding:
    prefix: --assay-type
- id: get_spikes
  doc: Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).
  type: string
  inputBinding:
    prefix: --get-spikes
- id: use_dim_red
  doc: A string specifying whether existing values in reducedDims(x) should be used.
  type: string
  inputBinding:
    prefix: --use-dimred
- id: output_i_graph_object
  doc: Path to the output igraph object in RDS format.
  type: string
  inputBinding:
    prefix: --output-igraph-object
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-build-snn-graph.R
