class: CommandLineTool
id: crux_pipeline.cwl
inputs:
- id: gap_tolerance
  doc: . Default = 3.
  type: boolean
  inputBinding:
    prefix: --gap-tolerance
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- pipeline
