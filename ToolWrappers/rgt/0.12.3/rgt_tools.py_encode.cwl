class: CommandLineTool
id: rgt_tools.py_encode.cwl
inputs:
- id: in_input_file_list
  doc: Input file list downloaded from ENCODE
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_directory
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- encode
