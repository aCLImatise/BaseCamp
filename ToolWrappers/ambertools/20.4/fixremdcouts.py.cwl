class: CommandLineTool
id: fixremdcouts.py.cwl
inputs:
- id: in_author
  doc: show the program's author name and exit
  type: boolean?
  inputBinding:
    prefix: --author
- id: in_overwrite
  doc: 'Allow existing outputs to be overwritten. Default:'
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_couts
  doc: "[FILE [FILE ...]]\nAMBER CPOUT and/or CEOUT files"
  type: boolean?
  inputBinding:
    prefix: -couts
- id: in_prefix
  doc: 'Prefix of the reordered file names. Default: reordered'
  type: File?
  inputBinding:
    prefix: -prefix
- id: in_false
  doc: 'Required Arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fixremdcouts.py
