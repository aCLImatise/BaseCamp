class: CommandLineTool
id: kmc_tools_transform.cwl
inputs:
- id: in_ci
  doc: <value> - exclude k-mers occurring less than <value> times
  type: boolean?
  inputBinding:
    prefix: -ci
- id: in_cx
  doc: <value> - exclude k-mers occurring more of than <value> times
  type: boolean?
  inputBinding:
    prefix: -cx
- id: in_cs
  doc: <value> - maximal value of a counter
  type: boolean?
  inputBinding:
    prefix: -cs
- id: in__sorted_output
  doc: '- sorted output'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sort
  doc: '- converts database produced by KMC2.x to KMC1.x database format (which contains
    k-mers in sorted order)'
  type: string
  inputBinding:
    position: 0
- id: in_reduce
  doc: '- exclude too rare and too frequent k-mers'
  type: string
  inputBinding:
    position: 1
- id: in_compact
  doc: '- remove counters of k-mers'
  type: string
  inputBinding:
    position: 2
- id: in_histogram
  doc: '- produce histogram of k-mers occurrences'
  type: string
  inputBinding:
    position: 3
- id: in_dump
  doc: '- produce text dump of kmc database'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kmc_tools
- transform
