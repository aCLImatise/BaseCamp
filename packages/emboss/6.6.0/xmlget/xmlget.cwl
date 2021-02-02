class: CommandLineTool
id: xmlget.cwl
inputs:
- id: in_xml
  doc: ': enter xml value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean
  inputBinding:
    prefix: -xml
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xmlget
