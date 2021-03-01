class: CommandLineTool
id: gxwf_lint.cwl
inputs:
- id: in_training_topic
  doc: "If this is a training workflow, specify a training\ntopic.\n"
  type: string?
  inputBinding:
    prefix: --training-topic
- id: in_path
  doc: workflow path
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gxwf-lint
