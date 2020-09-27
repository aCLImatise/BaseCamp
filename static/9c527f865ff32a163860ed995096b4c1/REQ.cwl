class: CommandLineTool
id: REQ.cwl
inputs:
- id: in_verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: in_d_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_outfile
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
- REQ
