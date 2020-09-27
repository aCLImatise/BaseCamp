class: CommandLineTool
id: to_upper_case.pl.cwl
inputs:
- id: in_convert_lower_case
  doc: ':       Convert to lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_convert_column_default
  doc: ': Convert only column <num> (default: convert the entire line)'
  type: long
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- to_upper_case.pl
