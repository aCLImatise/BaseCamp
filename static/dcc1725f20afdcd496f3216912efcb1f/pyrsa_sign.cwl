class: CommandLineTool
id: pyrsa_sign.cwl
inputs:
- id: in_input
  doc: "Name of the file to sign. Reads from stdin if not\nspecified."
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Name of the file to write the signature to. Written to\nstdout if this option\
    \ is not present."
  type: File?
  inputBinding:
    prefix: --output
- id: in_key_form
  doc: Key format of the private key - default PEM
  type: string?
  inputBinding:
    prefix: --keyform
- id: in_private_key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hash_method
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
- pyrsa-sign
