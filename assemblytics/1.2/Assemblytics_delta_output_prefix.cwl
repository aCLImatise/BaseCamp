class: CommandLineTool
id: ../../../Assemblytics_delta_output_prefix.cwl
inputs:
- id: unique_length_required
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: min_size
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: max_size
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- Assemblytics
- delta
- output_prefix
