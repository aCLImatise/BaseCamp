class: CommandLineTool
id: CombineOut_path to directory 2 with out files.cwl
inputs:
- id: path_to_directory_1_without_files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: path_to_directory_2_without_files
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
- path to directory 2 with out files
