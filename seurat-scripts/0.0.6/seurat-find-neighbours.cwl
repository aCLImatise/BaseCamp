#!/usr/bin/env cwl-runner

baseCommand:
- seurat-find-neighbours.R
class: CommandLineTool
cwlVersion: v1.0
id: seurat-find-neighbours.r
inputs:
- doc: File name in which a serialized R matrix object may be found.
  id: input_object_file
  inputBinding:
    prefix: --input-object-file
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  id: input_format
  inputBinding:
    prefix: --input-format
  type: string
- doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  id: output_format
  inputBinding:
    prefix: --output-format
  type: string
- doc: Boolean value of whether the provided matrix is a distance matrix; note, for
    objects of class dist, this parameter will be set automatically.
  id: distance_matrix
  inputBinding:
    prefix: --distance-matrix
  type: boolean
- doc: Defines k for the k-nearest neighbor algorithm
  id: k_param
  inputBinding:
    prefix: --k-param
  type: string
- doc: Also compute the shared nearest neighbor graph
  id: compute_snn
  inputBinding:
    prefix: --compute-snn
  type: boolean
- doc: Sets the cutoff for acceptable Jaccard index when computing the neighborhood
    overlap for the SNN construction. Any edges with values less than or equal to
    this will be set to 0 and removed from the SNN graph. Essentially sets the strigency
    of pruning (0 --- no pruning, 1 --- prune everything).
  id: prune_snn
  inputBinding:
    prefix: --prune-snn
  type: string
- doc: 'Method for nearest neighbor finding. Options include: rann (default), annoy'
  id: nn_method
  inputBinding:
    prefix: --nn-method
  type: string
- doc: File name in which to store serialized R object of type 'Seurat'.'
  id: output_object_file
  inputBinding:
    prefix: --output-object-file
  type: string
- doc: 'Distance metric for annoy. Options include: euclidean (default), cosine, manhattan,
    and hamming'
  id: annoy_metric
  inputBinding:
    prefix: --annoy-metric
  type: string
- doc: Name of graph to use for the clustering algorithm.
  id: graph_name
  inputBinding:
    prefix: --graph-name
  type: string
- doc: Error bound when performing nearest neighbor seach using RANN; default of 0.0
    implies exact nearest neighbor search
  id: nn_eps
  inputBinding:
    prefix: --nn-eps
  type: string
- doc: Maximal number of iterations per random start
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Force recalculation of SNN
  id: force_recalc
  inputBinding:
    prefix: --force-recalc
  type: boolean
- doc: Comma-separated list of genes to use for building SNN. Alternatively, text
    file with one gene per line.
  id: features
  inputBinding:
    prefix: --features
  type: string
- doc: Reduction to use as input for building the SNN
  id: reduction
  inputBinding:
    prefix: --reduction
  type: string
- doc: Dimensions of reduction to use as input. A comma-separated list of the dimensions
    to use in construction of the SNN graph (e.g. To use the first 5 PCs, pass 1,2,3,4,5).
  id: dims
  inputBinding:
    prefix: --dims
  type: string
- doc: Assay to use in construction of SNN
  id: assay
  inputBinding:
    prefix: --assay
  type: string
- doc: Plot SNN graph on tSNE coordinates
  id: do_plot
  inputBinding:
    prefix: --do-plot
  type: boolean
