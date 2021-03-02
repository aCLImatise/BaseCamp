class: CommandLineTool
id: sdreport.cwl
inputs:
- id: in_list_format_output
  doc: (list format) output all data fields for each record as processed
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_tab_format_tabulate
  doc: (tab format) tabulate selected fields for each record as processed
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_format_comma_delimited
  doc: (csv format) comma delimited output of selected fields for each record as processed
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_summary_format_output
  doc: (summary format) output summary statistics for each unique value of ligand
    ID
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sup
  doc: (supplier format) tabulate supplier details (from Catalyst)
  type: boolean?
  inputBinding:
    prefix: -sup
- id: in_id
  doc: <IDField> data field to use as ligand ID
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_nh
  doc: "'t output column headings in -t and -c formats"
  type: string?
  inputBinding:
    prefix: -nh
- id: in_old_score_field
  doc: old (v3.00) score field names as default columns in -t and -c formats, else
    use v4.00 field names
  type: double?
  inputBinding:
    prefix: -o
- id: in_norm
  doc: 'normalised score field names as default columns in -t and -c formats (normalised
    = score / #ligand heavy atoms)'
  type: string?
  inputBinding:
    prefix: -norm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sdreport
