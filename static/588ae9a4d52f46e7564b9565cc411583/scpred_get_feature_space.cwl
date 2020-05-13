class: CommandLineTool
id: scpred_get_feature_space.R.cwl
inputs:
- id: input_object
  doc: Path to the input object of scPred or seurat class in .rds format
  type: string
  inputBinding:
    prefix: --input-object
- id: prediction_column
  doc: Name of the metadata column that contains training labels
  type: string
  inputBinding:
    prefix: --prediction-column
- id: explained_var_limit
  doc: Threshold to filter principal components based on variance explained
  type: string
  inputBinding:
    prefix: --explained-var-limit
- id: correction_method
  doc: 'Multiple testing correction method. Default: fdr'
  type: string
  inputBinding:
    prefix: --correction-method
- id: significance_threshold
  doc: Significance threshold for principal components explaining class identity
  type: string
  inputBinding:
    prefix: --significance-threshold
- id: output_path
  doc: Path for the modified scPred object in .rds format
  type: string
  inputBinding:
    prefix: --output-path
- id: eigenvalue_plot_path
  doc: Path for eigenvalue plot for principal components in .png format
  type: string
  inputBinding:
    prefix: --eigenvalue-plot-path
outputs: []
cwlVersion: v1.1
baseCommand:
- scpred_get_feature_space.R
