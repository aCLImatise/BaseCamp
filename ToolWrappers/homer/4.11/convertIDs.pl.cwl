class: CommandLineTool
id: convertIDs.pl.cwl
inputs:
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_id_type
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_header
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_keep
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_original
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_all
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convertIDs.pl
