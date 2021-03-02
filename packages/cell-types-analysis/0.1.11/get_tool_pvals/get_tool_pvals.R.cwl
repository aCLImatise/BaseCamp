class: CommandLineTool
id: get_tool_pvals.R.cwl
inputs:
- id: in_input_table
  doc: Path to the table of tool statistics from get_tool_performance_table.R
  type: File?
  inputBinding:
    prefix: --input-table
- id: in_emp_dist_list
  doc: Path to the list of empirical distributions in .rds format
  type: File?
  inputBinding:
    prefix: --emp-dist-list
- id: in_output_table
  doc: Path to the modified output table in text format
  type: File?
  inputBinding:
    prefix: --output-table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_table
  doc: Path to the modified output table in text format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_table)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cell-types-analysis:0.1.11--0
cwlVersion: v1.1
baseCommand:
- get_tool_pvals.R
