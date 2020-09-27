class: CommandLineTool
id: scmap_get_std_output.R.cwl
inputs:
- id: in_predictions_file
  doc: Path to the predictions file in text format
  type: File
  inputBinding:
    prefix: --predictions-file
- id: in_output_table
  doc: Path to the final output file in text format
  type: File
  inputBinding:
    prefix: --output-table
- id: in_include_scores
  doc: 'Should prediction scores be included in output? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --include-scores
- id: in_index
  doc: Path to the index object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: File
  inputBinding:
    prefix: --index
- id: in_tool
  doc: What tool produced output? scmap-cell or scmap-cluster
  type: string
  inputBinding:
    prefix: --tool
- id: in_sim_col_name
  doc: Column name of similarity scores
  type: string
  inputBinding:
    prefix: --sim-col-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_table
  doc: Path to the final output file in text format
  type: File
  outputBinding:
    glob: $(inputs.in_output_table)
- id: out_index
  doc: Path to the index object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: File
  outputBinding:
    glob: $(inputs.in_index)
cwlVersion: v1.1
baseCommand:
- scmap_get_std_output.R
