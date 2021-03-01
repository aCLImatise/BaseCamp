class: CommandLineTool
id: featureCollapser.py.cwl
inputs:
- id: in_threads_to_run
  doc: Threads to run
  type: string?
  inputBinding:
    prefix: -p
- id: in_tsv
  doc: The delimited file.
  type: File?
  inputBinding:
    prefix: --tsv
- id: in_delimiter
  doc: The delimiter for fields.
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_group_on
  doc: 'The column of interest (default: 1). Can be a column'
  type: long?
  inputBinding:
    prefix: --group-on
- id: in_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,"
  type: File?
  inputBinding:
    prefix: -o
- id: in_substring
  doc: "If set, merge features by partial matches (such as\ncollapsing peptides into\
    \ larger peptides)"
  type: boolean?
  inputBinding:
    prefix: --substring
- id: in_summary_col
  doc: "The column to apply a function to (if you want to\ncombine fields, sum fields,\
    \ etc.)."
  type: string?
  inputBinding:
    prefix: --summary-col
- id: in_summary_col_func
  doc: "The function to apply to grouped entries in\nmodification columns. Options:\
    \ concat, mean, median,\nvar, std, sum, count"
  type: string?
  inputBinding:
    prefix: --summary-col-func
- id: in_summary_col_delimiter
  doc: "If the summary column has a delimiter, such as a ; for\nmultiple proteins."
  type: string?
  inputBinding:
    prefix: --summary-col-delimiter
- id: in_strict
  doc: "For numeric operations, fail if types are incorrect\n(converting NA to a float\
    \ for instance)."
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_merge
  doc: Merge together identical entries.
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_case_sensitive
  doc: "Treat peptides as case-sensitive (ie separate modified\npeptides)\n"
  type: boolean?
  inputBinding:
    prefix: --case-sensitive
- id: in_name_dot
  doc: '--header HEADER       The number of headers lines (default: 1).'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_write_results)
hints: []
cwlVersion: v1.1
baseCommand:
- featureCollapser.py
