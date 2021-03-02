class: CommandLineTool
id: extractmessages.cwl
inputs:
- id: in_include_following_messages
  doc: include the following messages in the next output
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_exclude_following_messages
  doc: exclude the following messages from the next output
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_message
  doc: message
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_write_output_here
  doc: write output here
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_type
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extractmessages
