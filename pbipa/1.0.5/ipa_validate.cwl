class: CommandLineTool
id: ../../../ipa_validate.cwl
inputs:
- id: in_ipa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ipa
- validate
