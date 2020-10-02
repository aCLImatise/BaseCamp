class: CommandLineTool
id: bank2lib.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: string
  inputBinding:
    prefix: -bank
- id: in_eid
  doc: report eids
  type: boolean
  inputBinding:
    prefix: -eid
- id: in_iid
  doc: report iids (default)
  type: boolean
  inputBinding:
    prefix: -iid
- id: in_output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank2lib
