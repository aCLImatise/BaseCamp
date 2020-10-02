class: CommandLineTool
id: scaffoldRange2Ungapped.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: boolean
  inputBinding:
    prefix: -bank
- id: in_file
  doc: 'file containing list of gapped coordinates in the following form, one per
    line:'
  type: boolean
  inputBinding:
    prefix: -file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scaffoldRange2Ungapped
