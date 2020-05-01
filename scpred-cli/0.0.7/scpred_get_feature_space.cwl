#!/usr/bin/env cwl-runner

baseCommand:
- scpred_get_feature_space.R
class: CommandLineTool
cwlVersion: v1.0
id: scpred_get_feature_space.r
inputs:
- doc: Path to the input object of scPred or seurat class in .rds format
  id: input_object
  inputBinding:
    prefix: --input-object
  type: string
- doc: Name of the metadata column that contains training labels
  id: prediction_column
  inputBinding:
    prefix: --prediction-column
  type: string
- doc: Threshold to filter principal components based on variance explained
  id: explained_var_limit
  inputBinding:
    prefix: --explained-var-limit
  type: string
- doc: 'Multiple testing correction method. Default: fdr'
  id: correction_method
  inputBinding:
    prefix: --correction-method
  type: string
- doc: Significance threshold for principal components explaining class identity
  id: significance_threshold
  inputBinding:
    prefix: --significance-threshold
  type: string
- doc: Path for the modified scPred object in .rds format
  id: output_path
  inputBinding:
    prefix: --output-path
  type: string
- doc: Path for eigenvalue plot for principal components in .png format
  id: eigenvalue_plot_path
  inputBinding:
    prefix: --eigenvalue-plot-path
  type: string
