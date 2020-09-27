class: CommandLineTool
id: fermi2_unpack.cwl
inputs:
- id: in_reads_dot_rld
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list_vertical_line_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi2
- unpack
