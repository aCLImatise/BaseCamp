class: CommandLineTool
id: ../../../runClassifier.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: runmetaphylerdotpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: classifiers
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: blast
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- runClassifier.pl
