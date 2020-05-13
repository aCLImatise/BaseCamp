class: CommandLineTool
id: featureCollapser.py.cwl
inputs:
- id: p
  doc: Threads to run
  type: string
  inputBinding:
    prefix: -p
- id: tsv
  doc: The delimited file.
  type: string
  inputBinding:
    prefix: --tsv
- id: delimiter
  doc: The delimiter for fields.
  type: string
  inputBinding:
    prefix: --delimiter
- id: group_on
  doc: 'The column of interest (default: 1). Can be a column name.'
  type: string
  inputBinding:
    prefix: --group-on
- id: header
  doc: 'The number of headers lines (default: 1).'
  type: string
  inputBinding:
    prefix: --header
- id: o
  doc: '[OUT], --out [OUT] The file to write results to. Leave blank for stdout,'
  type: boolean
  inputBinding:
    prefix: -o
- id: substring
  doc: If set, merge features by partial matches (such as collapsing peptides into
    larger peptides)
  type: boolean
  inputBinding:
    prefix: --substring
- id: summary_col
  doc: The column to apply a function to (if you want to combine fields, sum fields,
    etc.).
  type: string
  inputBinding:
    prefix: --summary-col
- id: summary_col_func
  doc: 'The function to apply to grouped entries in modification columns. Options:
    concat, mean, median, var, std, sum, count'
  type: string
  inputBinding:
    prefix: --summary-col-func
- id: summary_col_delimiter
  doc: If the summary column has a delimiter, such as a ; for multiple proteins.
  type: string
  inputBinding:
    prefix: --summary-col-delimiter
- id: strict
  doc: For numeric operations, fail if types are incorrect (converting NA to a float
    for instance).
  type: boolean
  inputBinding:
    prefix: --strict
- id: merge
  doc: Merge together identical entries.
  type: boolean
  inputBinding:
    prefix: --merge
- id: case_sensitive
  doc: Treat peptides as case-sensitive (ie separate modified peptides)
  type: boolean
  inputBinding:
    prefix: --case-sensitive
outputs: []
cwlVersion: v1.1
baseCommand:
- featureCollapser.py
