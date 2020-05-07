class: CommandLineTool
id: assignGenomeAnnotation.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- assignGenomeAnnotation
