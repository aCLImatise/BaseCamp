class: CommandLineTool
id: trimByOvl.cwl
inputs:
- id: in_file_do_to_vl
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trimByOvl
