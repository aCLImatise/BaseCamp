class: CommandLineTool
id: seurat_find_neighbours.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string
  inputBinding:
    prefix: --input-format
- id: output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string
  inputBinding:
    prefix: --output-format
- id: distance_matrix
  doc: Boolean value of whether the provided matrix is a distance matrix; note, for
    objects of class dist, this parameter will be set automatically.
  type: boolean
  inputBinding:
    prefix: --distance-matrix
- id: k_param
  doc: Defines k for the k-nearest neighbor algorithm
  type: string
  inputBinding:
    prefix: --k-param
- id: compute_snn
  doc: Also compute the shared nearest neighbor graph
  type: boolean
  inputBinding:
    prefix: --compute-snn
- id: prune_snn
  doc: Sets the cutoff for acceptable Jaccard index when computing the neighborhood
    overlap for the SNN construction. Any edges with values less than or equal to
    this will be set to 0 and removed from the SNN graph. Essentially sets the strigency
    of pruning (0 --- no pruning, 1 --- prune everything).
  type: string
  inputBinding:
    prefix: --prune-snn
- id: nn_method
  doc: 'Method for nearest neighbor finding. Options include: rann (default), annoy'
  type: string
  inputBinding:
    prefix: --nn-method
- id: output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: string
  inputBinding:
    prefix: --output-object-file
- id: annoy_metric
  doc: 'Distance metric for annoy. Options include: euclidean (default), cosine, manhattan,
    and hamming'
  type: string
  inputBinding:
    prefix: --annoy-metric
- id: graph_name
  doc: Name of graph to use for the clustering algorithm.
  type: string
  inputBinding:
    prefix: --graph-name
- id: nn_eps
  doc: Error bound when performing nearest neighbor seach using RANN; default of 0.0
    implies exact nearest neighbor search
  type: string
  inputBinding:
    prefix: --nn-eps
- id: verbose
  doc: Maximal number of iterations per random start
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force_recalc
  doc: Force recalculation of SNN
  type: boolean
  inputBinding:
    prefix: --force-recalc
- id: features
  doc: Comma-separated list of genes to use for building SNN. Alternatively, text
    file with one gene per line.
  type: string
  inputBinding:
    prefix: --features
- id: reduction
  doc: Reduction to use as input for building the SNN
  type: string
  inputBinding:
    prefix: --reduction
- id: dims
  doc: Dimensions of reduction to use as input. A comma-separated list of the dimensions
    to use in construction of the SNN graph (e.g. To use the first 5 PCs, pass 1,2,3,4,5).
  type: string
  inputBinding:
    prefix: --dims
- id: assay
  doc: Assay to use in construction of SNN
  type: string
  inputBinding:
    prefix: --assay
- id: do_plot
  doc: Plot SNN graph on tSNE coordinates
  type: boolean
  inputBinding:
    prefix: --do-plot
outputs: []
cwlVersion: v1.1
baseCommand:
- seurat-find-neighbours.R
