class: CommandLineTool
id: report.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: report_pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: taxprof1
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: merge
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: multiple
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: profile
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 7
- id: into
  doc: ''
  type: long
  inputBinding:
    position: 8
- id: one
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs: []
cwlVersion: v1.1
baseCommand:
- report.pl
