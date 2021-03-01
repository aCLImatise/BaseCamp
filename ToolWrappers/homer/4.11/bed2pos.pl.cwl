class: CommandLineTool
id: bed2pos.pl.cwl
inputs:
- id: in_check
  doc: (Checks if the file is already peak/pos formatted)
  type: boolean?
  inputBinding:
    prefix: -check
- id: in_unique
  doc: (Make peaks names unique by adding numbers to replicate names)
  type: boolean?
  inputBinding:
    prefix: -unique
- id: in_send_output_file_default
  doc: '(Send output to this file, default: stdout)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_pos
  doc: (Send output to file with same name as input file with *.pos extension)
  type: boolean?
  inputBinding:
    prefix: -pos
- id: in_bed_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_output_file_default
  doc: '(Send output to this file, default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_send_output_file_default)
hints: []
cwlVersion: v1.1
baseCommand:
- bed2pos.pl
