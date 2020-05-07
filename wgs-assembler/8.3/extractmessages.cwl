class: CommandLineTool
id: extractmessages.cwl
inputs:
- id: i
  doc: include the following messages in the next output
  type: boolean
  inputBinding:
    prefix: -i
- id: x
  doc: exclude the following messages from the next output
  type: boolean
  inputBinding:
    prefix: -x
- id: m
  doc: message
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: write output here
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- extractmessages
