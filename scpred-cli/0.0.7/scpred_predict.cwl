#!/usr/bin/env cwl-runner

baseCommand:
- scpred_predict.R
class: CommandLineTool
cwlVersion: v1.0
id: scpred_predict.r
inputs:
- doc: Path to the input object of scPred or seurat class in .rds format
  id: input_object
  inputBinding:
    prefix: --input-object
  type: string
- doc: Path to the input prediction matrix in .rds format
  id: pred_data
  inputBinding:
    prefix: --pred-data
  type: string
- doc: Path to the test labels file for evalutation of model performance in text format
  id: test_labels
  inputBinding:
    prefix: --test-labels
  type: string
- doc: Column name of true labels in provided metadata file
  id: cell_types_column
  inputBinding:
    prefix: --cell-types-column
  type: string
- doc: Classification threshold value
  id: threshold_level
  inputBinding:
    prefix: --threshold-level
  type: string
- doc: Output path for values predicted by the model in text format
  id: output_path
  inputBinding:
    prefix: --output-path
  type: string
- doc: Output path for prediction probabilities histograms in .png format
  id: plot_path
  inputBinding:
    prefix: --plot-path
  type: string
- doc: Output path for confusion table in text format
  id: confusion_table
  inputBinding:
    prefix: --confusion-table
  type: string
