class: CommandLineTool
id: scpred_get_std_output.R.cwl
inputs:
- id: in_predictions_file
  doc: Path to the predictions file in text format
  type: File
  inputBinding:
    prefix: --predictions-file
- id: in_cell_id_col
  doc: Cell id column name. If not provided, it is assumed cell ids are represented
    by index
  type: string
  inputBinding:
    prefix: --cell-id-col
- id: in_get_scores
  doc: 'Should score column be added? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-scores
- id: in_classifier
  doc: Path to the classifier object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: File
  inputBinding:
    prefix: --classifier
- id: in_output_table
  doc: Path to the final output file in text format
  type: File
  inputBinding:
    prefix: --output-table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_classifier
  doc: Path to the classifier object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: File
  outputBinding:
    glob: $(inputs.in_classifier)
- id: out_output_table
  doc: Path to the final output file in text format
  type: File
  outputBinding:
    glob: $(inputs.in_output_table)
cwlVersion: v1.1
baseCommand:
- scpred_get_std_output.R
