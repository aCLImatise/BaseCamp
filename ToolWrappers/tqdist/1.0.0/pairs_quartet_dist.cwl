class: CommandLineTool
id: pairs_quartet_dist.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_filename_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_filename_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_output_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename)
cwlVersion: v1.1
baseCommand:
- pairs_quartet_dist
