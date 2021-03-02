class: CommandLineTool
id: scater_run_tsne.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_n_components
  doc: Numeric scalar indicating the number of principal components to obtain.
  type: long?
  inputBinding:
    prefix: --ncomponents
- id: in_ntop
  doc: Numeric scalar specifying the number of most variable features to use for PCA.
  type: long?
  inputBinding:
    prefix: --ntop
- id: in_feature_set
  doc: file (one cell per line) to be used to derive a character vector of row names,
    indicating a set of features to use for t-SNE. This will override any ntop argument
    if specified.
  type: File?
  inputBinding:
    prefix: --feature-set
- id: in_exprs_values
  doc: Integer scalar or string indicating which assay of object should be used to
    obtain the expression values for the calculations.
  type: long?
  inputBinding:
    prefix: --exprs-values
- id: in_scale_features
  doc: Logical scalar, should the expression values be standardised so that each feature
    has unit variance?
  type: string?
  inputBinding:
    prefix: --scale-features
- id: in_use_dim_red
  doc: String or integer scalar specifying the entry of reducedDims(object) to use
    as input to Rtsne. Default is to not use existing reduced dimension results.
  type: long?
  inputBinding:
    prefix: --use-dimred
- id: in_n_dim_red
  doc: Integer scalar, number of dimensions of the reduced dimension slot to use when
    use_dimred is supplied. Defaults to all available dimensions.
  type: long?
  inputBinding:
    prefix: --n-dimred
- id: in_perplexity
  doc: Numeric scalar defining the perplexity parameter, see ?Rtsne for more details.
  type: string?
  inputBinding:
    prefix: --perplexity
- id: in_pc_a
  doc: Logical scalar passed to Rtsne, indicating whether an initial PCA step should
    be performed. This is ignored if use_dimred is specified.
  type: string?
  inputBinding:
    prefix: --pca
- id: in_initial_dims
  doc: Integer scalar passed to Rtsne, specifying the number of principal components
    to be retained if pca=TRUE.
  type: long?
  inputBinding:
    prefix: --initial-dims
- id: in_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints: []
cwlVersion: v1.1
baseCommand:
- scater-run-tsne.R
