class: CommandLineTool
id: ../../../to_upper_case.pl.cwl
inputs:
- id: convert_lower_case
  doc: ':       Convert to lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: convert_only_column
  doc: ': Convert only column <num> (default: convert the entire line)'
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- to_upper_case.pl
