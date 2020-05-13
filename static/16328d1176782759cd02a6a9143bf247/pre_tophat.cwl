class: CommandLineTool
id: pre_tophat.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: file containing input files and ids id [tab] path.to/file
  type: File
  inputBinding:
    prefix: -l
- id: a
  doc: 'DIEGO-formated annotation file '
  type: File
  inputBinding:
    prefix: -a
- id: o
  doc: output file name (default:junction_tophat_DIEGO )
  type: File
  inputBinding:
    prefix: -o
- id: h
  doc: this (usefull) help message
  type: File
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- pre_tophat.pl
