class: CommandLineTool
id: RNAcentralHTTPRequest.cwl
inputs:
- id: in_input_sequence
  doc: input sequence
  type: string?
  inputBinding:
    prefix: --inputsequence
- id: in_verbose
  doc: Loud verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RNAcentralHTTPRequest
