class: CommandLineTool
id: scpred_get_feature_space.R.cwl
inputs:
- id: in_input_object
  doc: Path to the input object of scPred or seurat class in .rds format
  type: File?
  inputBinding:
    prefix: --input-object
- id: in_prediction_column
  doc: Name of the metadata column that contains training labels
  type: string?
  inputBinding:
    prefix: --prediction-column
- id: in_explained_var_limit
  doc: Threshold to filter principal components based on variance explained
  type: string?
  inputBinding:
    prefix: --explained-var-limit
- id: in_correction_method
  doc: 'Multiple testing correction method. Default: fdr'
  type: string?
  inputBinding:
    prefix: --correction-method
- id: in_significance_threshold
  doc: Significance threshold for principal components explaining class identity
  type: string?
  inputBinding:
    prefix: --significance-threshold
- id: in_output_path
  doc: Path for the modified scPred object in .rds format
  type: File?
  inputBinding:
    prefix: --output-path
- id: in_eigenvalue_plot_path
  doc: Path for eigenvalue plot for principal components in .png format
  type: File?
  inputBinding:
    prefix: --eigenvalue-plot-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Path for the modified scPred object in .rds format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints: []
cwlVersion: v1.1
baseCommand:
- scpred_get_feature_space.R
