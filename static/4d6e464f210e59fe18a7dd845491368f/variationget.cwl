class: CommandLineTool
id: variationget.cwl
inputs:
- id: in_variation
  doc: ': enter variation value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean?
  inputBinding:
    prefix: -variation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- variationget
