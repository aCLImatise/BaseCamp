class: CommandLineTool
id: scmap_get_std_output.R.cwl
inputs:
- id: predictions_file
  doc: Path to the predictions file in text format
  type: string
  inputBinding:
    prefix: --predictions-file
- id: output_table
  doc: Path to the final output file in text format
  type: string
  inputBinding:
    prefix: --output-table
- id: include_scores
  doc: 'Should prediction scores be included in output? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --include-scores
- id: index
  doc: Path to the index object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: string
  inputBinding:
    prefix: --index
- id: tool
  doc: What tool produced output? scmap-cell or scmap-cluster
  type: string
  inputBinding:
    prefix: --tool
- id: sim_col_name
  doc: Column name of similarity scores
  type: string
  inputBinding:
    prefix: --sim-col-name
outputs: []
cwlVersion: v1.1
baseCommand:
- scmap_get_std_output.R
