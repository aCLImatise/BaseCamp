class: CommandLineTool
id: HTseq2DIEGO.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: file containing input files and ids id [tab] path.to/file
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: output file name (default:junction_table_dexdas )
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
- HTseq2DIEGO.pl
