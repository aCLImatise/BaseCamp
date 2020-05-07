class: CommandLineTool
id: kmer_analysis.pl_STRING.cwl
inputs:
- id: f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: k
  doc: ''
  type: long
  inputBinding:
    prefix: -k
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer_analysis.pl
- STRING
