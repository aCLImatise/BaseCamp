class: CommandLineTool
id: find_query_breaks.cwl
inputs:
- id: b
  doc: 'Minimum length of alignment break to report (Default: 10)'
  type: string
  inputBinding:
    prefix: -b
- id: w
  doc: 'Minimum distance to edge of reference sequence to report (Default: 0)'
  type: string
  inputBinding:
    prefix: -w
- id: l
  doc: 'Minimum length of query sequence to report (Default: 0)'
  type: string
  inputBinding:
    prefix: -l
- id: f
  doc: Flag broken alignments within this distance of reference
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: Flag adjacent broken alignments from same query
  type: boolean
  inputBinding:
    prefix: -s
- id: c
  doc: Only show collapses
  type: boolean
  inputBinding:
    prefix: -C
- id: b
  doc: Only show alignment breaks
  type: boolean
  inputBinding:
    prefix: -B
- id: c
  doc: Load fix regions from all.feat and mark if fixed in -B breakreport
  type: boolean
  inputBinding:
    prefix: -c
- id: a
  doc: Display breaks as AMOS features
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- find-query-breaks
