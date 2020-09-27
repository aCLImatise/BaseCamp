class: CommandLineTool
id: maf_join.cwl
inputs:
- id: in_sorted_file_two_dot_maf
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf-join
