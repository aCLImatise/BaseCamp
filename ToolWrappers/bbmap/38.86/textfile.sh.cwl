class: CommandLineTool
id: textfile.sh.cwl
inputs:
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_start_line
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_stop_line
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
- textfile.sh
