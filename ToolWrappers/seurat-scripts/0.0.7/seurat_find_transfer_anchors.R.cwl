class: CommandLineTool
id: seurat_find_transfer_anchors.R.cwl
inputs:
- id: in_query_file
  doc: File containing seurat object to use as the query.
  type: File?
  inputBinding:
    prefix: --query-file
- id: in_query_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string?
  inputBinding:
    prefix: --query-format
- id: in_reference_file
  doc: File containing seurat object to use as the reference.
  type: File?
  inputBinding:
    prefix: --reference-file
- id: in_reference_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string?
  inputBinding:
    prefix: --reference-format
- id: in_output_file
  doc: File name in which to store serialized R matrix object.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_normalization_method
  doc: 'Name of normalization method used: LogNormalize or SCT.'
  type: string?
  inputBinding:
    prefix: --normalization-method
- id: in_reference_assay
  doc: Assay to use from reference.
  type: string?
  inputBinding:
    prefix: --reference-assay
- id: in_query_assay
  doc: Assay to use from query.
  type: string?
  inputBinding:
    prefix: --query-assay
- id: in_reduction
  doc: Dimensional reduction to perform when finding anchors.
  type: string?
  inputBinding:
    prefix: --reduction
- id: in_project_query
  doc: Project the PCA from the query dataset onto the reference. Use only in rare
    cases.
  type: boolean?
  inputBinding:
    prefix: --project-query
- id: in_l_two_norm
  doc: Execute a l2 normalization on the query.
  type: boolean?
  inputBinding:
    prefix: --l2-norm
- id: in_features
  doc: Features to use for dimensional reductionFeatures to use for dimensional reduction.
  type: string?
  inputBinding:
    prefix: --features
- id: in_npcs
  doc: Number of PCs to compute on reference. If null, then use an existing PCA structure
    in the reference object.
  type: long?
  inputBinding:
    prefix: --npcs
- id: in_dims
  doc: Which dimensions to use from the reduction to specify the neighbor search space.
  type: string?
  inputBinding:
    prefix: --dims
- id: in_k_anchor
  doc: How many neighbors (k) to use when picking anchors.
  type: string?
  inputBinding:
    prefix: --k-anchor
- id: in_k_filter
  doc: How many neighbors (k) to use when filtering anchors.
  type: string?
  inputBinding:
    prefix: --k-filter
- id: in_k_score
  doc: How many neighbors (k) to use when scoring anchors.
  type: string?
  inputBinding:
    prefix: --k-score
- id: in_max_features
  doc: The maximum number of features to use when specifying the neighborhood search
    space in the anchor filtering.
  type: long?
  inputBinding:
    prefix: --max-features
- id: in_nn_method
  doc: 'Method for nearest neighbor finding. Options include: rann, annoy.'
  type: string?
  inputBinding:
    prefix: --nn-method
- id: in_eps
  doc: Error bound on the neighbor finding algorithm (from RANN).
  type: string?
  inputBinding:
    prefix: --eps
- id: in_approx_pc_a
  doc: Use truncated singular value decomposition to approximate PCA.
  type: boolean?
  inputBinding:
    prefix: --approx-pca
- id: in_verbose
  doc: Print progress bars and output.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File name in which to store serialized R matrix object.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seurat-find-transfer-anchors.R
