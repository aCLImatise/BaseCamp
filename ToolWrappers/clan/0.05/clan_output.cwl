class: CommandLineTool
id: clan_output.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_clan_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_reference_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_read_file
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- clan_output
