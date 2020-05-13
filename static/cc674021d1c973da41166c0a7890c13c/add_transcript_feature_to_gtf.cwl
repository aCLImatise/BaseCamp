class: CommandLineTool
id: add_transcript_feature_to_gtf.py.cwl
inputs:
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: add
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: transcript
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: feature
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: eg
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: cufflinks
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: gt_fs
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- add_transcript_feature_to_gtf.py
