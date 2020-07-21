class: CommandLineTool
id: ../../../AlignmentTools_alignment_merger.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_merger
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: align_file_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: outfile_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: mask_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- alignment-merger
