class: CommandLineTool
id: gfftoDIEGObed.pl.cwl
inputs:
- id: g
  doc: gff file e.g. from ENSMBL
  type: File
  inputBinding:
    prefix: -g
- id: o
  doc: output file name (default:annotation_DIEGO.bed)
  type: File
  inputBinding:
    prefix: -o
- id: w
  doc: 'what is used as genes (default: gene)'
  type: string
  inputBinding:
    prefix: -w
- id: h
  doc: help message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- gfftoDIEGObed.pl
