class: CommandLineTool
id: get_tool_pvals.R.cwl
inputs:
- id: input_table
  doc: Path to the table of tool statistics from get_tool_performance_table.R
  type: string
  inputBinding:
    prefix: --input-table
- id: emp_dist_list
  doc: Path to the list of empirical distributions in .rds format
  type: string
  inputBinding:
    prefix: --emp-dist-list
- id: output_table
  doc: Path to the modified output table in text format
  type: string
  inputBinding:
    prefix: --output-table
outputs: []
cwlVersion: v1.1
baseCommand:
- get_tool_pvals.R
