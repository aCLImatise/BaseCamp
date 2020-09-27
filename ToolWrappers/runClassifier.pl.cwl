class: CommandLineTool
id: runClassifier.pl.cwl
inputs:
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_runmetaphylerdotpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_taxonomy
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_classifiers
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_blast
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- runClassifier.pl
