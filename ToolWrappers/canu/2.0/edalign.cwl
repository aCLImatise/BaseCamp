class: CommandLineTool
id: edalign.cwl
inputs:
- id: in_mandatory_path_first
  doc: Mandatory, path to first input file
  type: File?
  inputBinding:
    prefix: -a
- id: in_mandatory_path_second
  doc: Mandatory, path to second input file
  type: File?
  inputBinding:
    prefix: -b
- id: in_ref
  doc: ''
  type: File[]
  inputBinding:
    prefix: -ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- edalign
