class: CommandLineTool
id: deeplc.cwl
inputs:
- id: in_file_pred
  doc: "Path to peptide file for which to make predictions\n(required)"
  type: File?
  inputBinding:
    prefix: --file_pred
- id: in_file_cal
  doc: "Path to peptide file with retention times to use for\ncalibration (optional)"
  type: File?
  inputBinding:
    prefix: --file_cal
- id: in_file_pred_out
  doc: Path to output file with predictions (optional)
  type: File?
  inputBinding:
    prefix: --file_pred_out
- id: in_file_model
  doc: "Path to prediction model(s). Seperate with spaces.\nLeave empty to select\
    \ the best of the default models\n(optional)"
  type: File[]
  inputBinding:
    prefix: --file_model
- id: in_dict_divider
  doc: "Batch size (in peptides) for predicting the retention\ntime. Set lower to\
    \ decrease memory footprint\n(optional, default=250000)"
  type: long?
  inputBinding:
    prefix: --dict_divider
- id: in_plot_predictions
  doc: "Save scatter plot of predictions vs observations\n(default=False)"
  type: boolean?
  inputBinding:
    prefix: --plot_predictions
- id: in_n_threads
  doc: "Number of threads to use (optional, default=maximum\navailable)"
  type: long?
  inputBinding:
    prefix: --n_threads
- id: in_log_level
  doc: "Logging level (debug, info, warning, error, or\ncritical; default=info)"
  type: string?
  inputBinding:
    prefix: --log_level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_pred_out
  doc: Path to output file with predictions (optional)
  type: File?
  outputBinding:
    glob: $(inputs.in_file_pred_out)
hints: []
cwlVersion: v1.1
baseCommand:
- deeplc
