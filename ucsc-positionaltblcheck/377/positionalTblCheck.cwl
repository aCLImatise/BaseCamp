class: CommandLineTool
id: ../../../positionalTblCheck.cwl
inputs:
- id: in_verbose
  doc: n>=2, print tables as checked
  type: long
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- positionalTblCheck
