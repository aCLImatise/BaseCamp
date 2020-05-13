class: CommandLineTool
id: to_upper_case.pl.bak.cwl
inputs:
- id: l
  doc: ':       Convert to lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: c
  doc: ': Convert only column <num> (default: convert the entire line)'
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- to_upper_case.pl.bak
