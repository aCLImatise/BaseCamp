class: CommandLineTool
id: scpred_get_std_output.R.cwl
inputs:
- id: predictions_file
  doc: Path to the predictions file in text format
  type: string
  inputBinding:
    prefix: --predictions-file
- id: cell_id_col
  doc: Cell id column name. If not provided, it is assumed cell ids are represented
    by index
  type: string
  inputBinding:
    prefix: --cell-id-col
- id: get_scores
  doc: 'Should score column be added? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-scores
- id: classifier
  doc: Path to the classifier object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: string
  inputBinding:
    prefix: --classifier
- id: output_table
  doc: Path to the final output file in text format
  type: string
  inputBinding:
    prefix: --output-table
outputs: []
cwlVersion: v1.1
baseCommand:
- scpred_get_std_output.R
