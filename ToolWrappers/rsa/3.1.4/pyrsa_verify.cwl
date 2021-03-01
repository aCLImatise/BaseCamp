class: CommandLineTool
id: pyrsa_verify.cwl
inputs:
- id: in_input
  doc: "Name of the file to verify. Reads from stdin if not\nspecified."
  type: File?
  inputBinding:
    prefix: --input
- id: in_key_form
  doc: Key format of the public key - default PEM
  type: string?
  inputBinding:
    prefix: --keyform
- id: in_public_key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_signature_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyrsa-verify
