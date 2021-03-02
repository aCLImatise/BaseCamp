class: CommandLineTool
id: mlocarna_nnames.cwl
inputs:
- id: in_man
  doc: Full documentation
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mlocarna_nnames
