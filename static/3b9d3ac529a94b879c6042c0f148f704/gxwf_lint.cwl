class: CommandLineTool
id: ../../../gxwf_lint.cwl
inputs:
- id: training_topic
  doc: If this is a training workflow, specify a training topic.
  type: string
  inputBinding:
    prefix: --training-topic
- id: path
  doc: workflow path
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gxwf-lint
