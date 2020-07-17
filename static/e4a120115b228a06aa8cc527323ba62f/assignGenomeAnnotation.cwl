class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/assignGenomeAnnotation.cwl
inputs:
- id: ann
  doc: (File to output annotations for each peak/tag, by default not created)
  type: File
  inputBinding:
    prefix: -ann
- id: stats
  doc: (File to output annotation statistics, default to stdout)
  type: File
  inputBinding:
    prefix: -stats
- id: peak_file_or_tag_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotation_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- assignGenomeAnnotation
