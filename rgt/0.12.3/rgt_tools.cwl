class: CommandLineTool
id: ../../../rgt_tools.py_encode.cwl
inputs:
- id: input_file_list
  doc: Input file list downloaded from ENCODE
  type: string
  inputBinding:
    prefix: -i
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- encode
