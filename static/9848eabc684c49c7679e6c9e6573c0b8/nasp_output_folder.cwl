class: CommandLineTool
id: nasp_output_folder.cwl
inputs:
- id: in_config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: in_nasp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_folder
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nasp
- output_folder
