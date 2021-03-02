class: CommandLineTool
id: assignGenomeAnnotation.cwl
inputs:
- id: in_tags
  doc: (Use if first argument is a tag directory)
  type: boolean?
  inputBinding:
    prefix: -tags
- id: in_frag_length
  doc: '<#|auto> (Approximate fragment length, default: auto)'
  type: boolean?
  inputBinding:
    prefix: -fragLength
- id: in_prioritize
  doc: "(annotation file is just a peak file - hasn't been prioritized yet)\nA prioritized\
    \ file will be created for future use with the program\nThis option should be\
    \ used if the annotation file isn't prioritized"
  type: File?
  inputBinding:
    prefix: -prioritize
- id: in_ann
  doc: (File to output annotations for each peak/tag, by default not created)
  type: File?
  inputBinding:
    prefix: -ann
- id: in_stats
  doc: (File to output annotation statistics, default to stdout)
  type: File?
  inputBinding:
    prefix: -stats
- id: in_peak_file_or_tag_directory
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_annotation_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prioritize
  doc: "(annotation file is just a peak file - hasn't been prioritized yet)\nA prioritized\
    \ file will be created for future use with the program\nThis option should be\
    \ used if the annotation file isn't prioritized"
  type: File?
  outputBinding:
    glob: $(inputs.in_prioritize)
- id: out_ann
  doc: (File to output annotations for each peak/tag, by default not created)
  type: File?
  outputBinding:
    glob: $(inputs.in_ann)
- id: out_stats
  doc: (File to output annotation statistics, default to stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_stats)
hints: []
cwlVersion: v1.1
baseCommand:
- assignGenomeAnnotation
