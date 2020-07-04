class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/make_alignment_with_selected_path_when_overlaps.py.cwl
inputs:
- id: minimum_continuous_match
  doc: 'minimum continuous match above which as overlap. Default: 10'
  type: long
  inputBinding:
    prefix: -k
- id: similarity_threshold_took
  doc: 'similarity threshold above which took as overlap. Default: 0.8'
  type: string
  inputBinding:
    prefix: -s
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- make_alignment_with_selected_path_when_overlaps.py
