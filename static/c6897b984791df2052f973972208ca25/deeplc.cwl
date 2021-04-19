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
- id: in_use_library
  doc: "Use a library with previously predicted retention\ntimes, argument takes a\
    \ string with the location to\nthe library"
  type: string?
  inputBinding:
    prefix: --use_library
- id: in_write_library
  doc: "Append to a library with predicted retention times,\nwill write to the file\
    \ specified by --use_library"
  type: boolean?
  inputBinding:
    prefix: --write_library
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_pred_out
  doc: Path to output file with predictions (optional)
  type: File?
  outputBinding:
    glob: $(inputs.in_file_pred_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deeplc:0.1.29--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- deeplc
