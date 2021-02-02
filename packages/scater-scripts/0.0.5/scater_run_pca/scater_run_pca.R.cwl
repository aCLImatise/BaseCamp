class: CommandLineTool
id: scater_run_pca.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_n_components
  doc: Numeric scalar indicating the number of principal components to obtain.
  type: long
  inputBinding:
    prefix: --ncomponents
- id: in_method
  doc: 'String specifying how the PCA should be performed. (default: prcomp)'
  type: string
  inputBinding:
    prefix: --method
- id: in_ntop
  doc: Numeric scalar specifying the number of most variable features to use for PCA.
  type: long
  inputBinding:
    prefix: --ntop
- id: in_exprs_values
  doc: Integer scalar or string indicating which assay of object should be used to
    obtain the expression values for the calculations.
  type: long
  inputBinding:
    prefix: --exprs-values
- id: in_feature_set
  doc: file (one cell per line) to be used to derive a character vector of row names
    indicating a set of features to use for PCA. This will override any ntop argument
    if specified.
  type: File
  inputBinding:
    prefix: --feature-set
- id: in_scale_features
  doc: Logical scalar, should the expression values be standardised so that each feature
    has unit variance? This will also remove features with standard deviations below
    1e-8.
  type: double
  inputBinding:
    prefix: --scale-features
- id: in_use_cold_at_a
  doc: Logical scalar specifying whether the column data should be used instead of
    expression values to perform PCA.
  type: string
  inputBinding:
    prefix: --use-coldata
- id: in_selected_variables
  doc: Comma-separated list of strings indicating which variables in colData(object)
    to use for PCA when use_coldata=TRUE.
  type: string
  inputBinding:
    prefix: --selected-variables
- id: in_detect_outliers
  doc: Logical scalar, should outliers be detected based on PCA coordinates generated
    from column-level metadata?
  type: string
  inputBinding:
    prefix: --detect-outliers
- id: in_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- scater-run-pca.R
