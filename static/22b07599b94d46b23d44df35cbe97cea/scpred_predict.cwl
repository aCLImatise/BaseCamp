class: CommandLineTool
id: scpred_predict.R.cwl
inputs:
- id: input_object
  doc: Path to the input object of scPred or seurat class in .rds format
  type: string
  inputBinding:
    prefix: --input-object
- id: pred_data
  doc: Path to the input prediction matrix in .rds format
  type: string
  inputBinding:
    prefix: --pred-data
- id: test_labels
  doc: Path to the test labels file for evalutation of model performance in text format
  type: string
  inputBinding:
    prefix: --test-labels
- id: cell_types_column
  doc: Column name of true labels in provided metadata file
  type: string
  inputBinding:
    prefix: --cell-types-column
- id: threshold_level
  doc: Classification threshold value
  type: string
  inputBinding:
    prefix: --threshold-level
- id: output_path
  doc: Output path for values predicted by the model in text format
  type: string
  inputBinding:
    prefix: --output-path
- id: plot_path
  doc: Output path for prediction probabilities histograms in .png format
  type: string
  inputBinding:
    prefix: --plot-path
- id: confusion_table
  doc: Output path for confusion table in text format
  type: string
  inputBinding:
    prefix: --confusion-table
outputs: []
cwlVersion: v1.1
baseCommand:
- scpred_predict.R
