class: CommandLineTool
id: scater_run_tsne.R.cwl
inputs:
- id: input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: n_components
  doc: Numeric scalar indicating the number of principal components to obtain.
  type: string
  inputBinding:
    prefix: --ncomponents
- id: ntop
  doc: Numeric scalar specifying the number of most variable features to use for PCA.
  type: string
  inputBinding:
    prefix: --ntop
- id: feature_set
  doc: file (one cell per line) to be used to derive a character vector of row names,
    indicating a set of features to use for t-SNE. This will override any ntop argument
    if specified.
  type: string
  inputBinding:
    prefix: --feature-set
- id: exprs_values
  doc: Integer scalar or string indicating which assay of object should be used to
    obtain the expression values for the calculations.
  type: string
  inputBinding:
    prefix: --exprs-values
- id: scale_features
  doc: Logical scalar, should the expression values be standardised so that each feature
    has unit variance?
  type: string
  inputBinding:
    prefix: --scale-features
- id: use_dim_red
  doc: String or integer scalar specifying the entry of reducedDims(object) to use
    as input to Rtsne. Default is to not use existing reduced dimension results.
  type: string
  inputBinding:
    prefix: --use-dimred
- id: n_dim_red
  doc: Integer scalar, number of dimensions of the reduced dimension slot to use when
    use_dimred is supplied. Defaults to all available dimensions.
  type: string
  inputBinding:
    prefix: --n-dimred
- id: perplexity
  doc: Numeric scalar defining the perplexity parameter, see ?Rtsne for more details.
  type: string
  inputBinding:
    prefix: --perplexity
- id: pc_a
  doc: Logical scalar passed to Rtsne, indicating whether an initial PCA step should
    be performed. This is ignored if use_dimred is specified.
  type: string
  inputBinding:
    prefix: --pca
- id: initial_dims
  doc: Integer scalar passed to Rtsne, specifying the number of principal components
    to be retained if pca=TRUE.
  type: string
  inputBinding:
    prefix: --initial-dims
- id: output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scater-run-tsne.R
