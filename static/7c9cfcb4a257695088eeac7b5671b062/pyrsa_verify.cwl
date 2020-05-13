class: CommandLineTool
id: pyrsa_verify.cwl
inputs:
- id: public_key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: signature_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: Name of the file to verify. Reads from stdin if not specified.
  type: string
  inputBinding:
    prefix: --input
- id: key_form
  doc: Key format of the public key - default PEM
  type: string
  inputBinding:
    prefix: --keyform
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrsa-verify
