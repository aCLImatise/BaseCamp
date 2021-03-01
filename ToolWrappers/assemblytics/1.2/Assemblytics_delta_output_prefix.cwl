class: CommandLineTool
id: Assemblytics_delta_output_prefix.cwl
inputs:
- id: in_unique_length_required
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_min_size
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_max_size
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Assemblytics
- delta
- output_prefix
