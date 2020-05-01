#!/usr/bin/env cwl-runner

baseCommand:
- featureCollapser.py
class: CommandLineTool
cwlVersion: v1.0
id: featurecollapser.py
inputs:
- doc: Threads to run
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: The delimited file.
  id: tsv
  inputBinding:
    prefix: --tsv
  type: string
- doc: The delimiter for fields.
  id: delimiter
  inputBinding:
    prefix: --delimiter
  type: string
- doc: 'The column of interest (default: 1). Can be a column name.'
  id: group_on
  inputBinding:
    prefix: --group-on
  type: string
- doc: 'The number of headers lines (default: 1).'
  id: header
  inputBinding:
    prefix: --header
  type: string
- doc: '[OUT], --out [OUT] The file to write results to. Leave blank for stdout,'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: If set, merge features by partial matches (such as collapsing peptides into
    larger peptides)
  id: substring
  inputBinding:
    prefix: --substring
  type: boolean
- doc: The column to apply a function to (if you want to combine fields, sum fields,
    etc.).
  id: summary_col
  inputBinding:
    prefix: --summary-col
  type: string
- doc: 'The function to apply to grouped entries in modification columns. Options:
    concat, mean, median, var, std, sum, count'
  id: summary_col_func
  inputBinding:
    prefix: --summary-col-func
  type: string
- doc: If the summary column has a delimiter, such as a ; for multiple proteins.
  id: summary_col_delimiter
  inputBinding:
    prefix: --summary-col-delimiter
  type: string
- doc: For numeric operations, fail if types are incorrect (converting NA to a float
    for instance).
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: Merge together identical entries.
  id: merge
  inputBinding:
    prefix: --merge
  type: boolean
- doc: Treat peptides as case-sensitive (ie separate modified peptides)
  id: case_sensitive
  inputBinding:
    prefix: --case-sensitive
  type: boolean
