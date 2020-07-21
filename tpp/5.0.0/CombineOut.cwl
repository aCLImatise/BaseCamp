class: CommandLineTool
id: ../../../CombineOut.cwl
inputs:
- id: path_to_directory_one_with_out_files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: path_to_directory_two_with_out_files
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: output_path
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- CombineOut
