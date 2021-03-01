class: CommandLineTool
id: scpred_predict.R.cwl
inputs:
- id: in_input_object
  doc: Path to the input object of scPred or seurat class in .rds format
  type: File?
  inputBinding:
    prefix: --input-object
- id: in_pred_data
  doc: Path to the input prediction matrix in .rds format
  type: File?
  inputBinding:
    prefix: --pred-data
- id: in_test_labels
  doc: Path to the test labels file for evalutation of model performance in text format
  type: File?
  inputBinding:
    prefix: --test-labels
- id: in_cell_types_column
  doc: Column name of true labels in provided metadata file
  type: File?
  inputBinding:
    prefix: --cell-types-column
- id: in_threshold_level
  doc: Classification threshold value
  type: string?
  inputBinding:
    prefix: --threshold-level
- id: in_output_path
  doc: Output path for values predicted by the model in text format
  type: File?
  inputBinding:
    prefix: --output-path
- id: in_plot_path
  doc: Output path for prediction probabilities histograms in .png format
  type: File?
  inputBinding:
    prefix: --plot-path
- id: in_confusion_table
  doc: Output path for confusion table in text format
  type: File?
  inputBinding:
    prefix: --confusion-table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Output path for values predicted by the model in text format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
- id: out_plot_path
  doc: Output path for prediction probabilities histograms in .png format
  type: File?
  outputBinding:
    glob: $(inputs.in_plot_path)
- id: out_confusion_table
  doc: Output path for confusion table in text format
  type: File?
  outputBinding:
    glob: $(inputs.in_confusion_table)
hints: []
cwlVersion: v1.1
baseCommand:
- scpred_predict.R
