class: CommandLineTool
id: urlget.cwl
inputs:
- id: in_url
  doc: ': enter url value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean
  inputBinding:
    prefix: -url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- urlget
