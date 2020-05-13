class: CommandLineTool
id: make_alignment_with_selected_path_when_overlaps.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: make_alignment_with_selected_path_when_overlap_spy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: k
  doc: 'minimum continuous match above which as overlap. Default: 10'
  type: long
  inputBinding:
    prefix: -k
- id: s
  doc: 'similarity threshold above which took as overlap. Default: 0.8'
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- make_alignment_with_selected_path_when_overlaps.py
