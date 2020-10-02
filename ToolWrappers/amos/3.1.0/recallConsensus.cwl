class: CommandLineTool
id: recallConsensus.cwl
inputs:
- id: in_bank
  doc: Bank where assembly is stored
  type: boolean
  inputBinding:
    prefix: -bank
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_ambiguity
  doc: Use Ambiguity Codes
  type: boolean
  inputBinding:
    prefix: -ambiguity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- recallConsensus
