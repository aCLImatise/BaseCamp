class: CommandLineTool
id: pyrsa_encrypt.cwl
inputs:
- id: in_input
  doc: "Name of the file to encrypt. Reads from stdin if not\nspecified."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Name of the file to write the encrypted file to.\nWritten to stdout if this\
    \ option is not present."
  type: File
  inputBinding:
    prefix: --output
- id: in_key_form
  doc: Key format of the public key - default PEM
  type: string
  inputBinding:
    prefix: --keyform
- id: in_public_key
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyrsa-encrypt
