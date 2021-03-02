class: CommandLineTool
id: crisprtools_stat.cwl
inputs:
- id: in_print_aggregate_summary
  doc: print out aggregate summary, can be combined with -t -p
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_print_column_headers
  doc: print out column headers in tabular output
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_comma_separated_list
  doc: a comma separated list of group IDs that you would like to see stats for.
  type: string?
  inputBinding:
    prefix: -g
- id: in_pretty_print
  doc: pretty print
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_separator_string_tabular
  doc: "separator string for tabular output [default: '     ']"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_tabular_output
  doc: tabular output
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_coverage
  doc: Create a detailed report on the spacer coverage for each group
  type: boolean?
  inputBinding:
    prefix: --coverage
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crisprtools
- stat
