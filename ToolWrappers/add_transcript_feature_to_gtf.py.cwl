class: CommandLineTool
id: add_transcript_feature_to_gtf.py.cwl
inputs:
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_add
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_transcript
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_feature
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_e_dot_gdot
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_cufflinks
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_gt_fs
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add_transcript_feature_to_gtf.py
