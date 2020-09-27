class: CommandLineTool
id: textget.cwl
inputs:
- id: in_text
  doc: ': enter text value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean
  inputBinding:
    prefix: -text
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- textget
