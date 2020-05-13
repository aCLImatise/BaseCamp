class: CommandLineTool
id: pyrsa_decrypt.cwl
inputs:
- id: private_key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Name of the file to decrypt. Reads from stdin if not specified.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Name of the file to write the decrypted file to. Written to stdout if this
    option is not present.
  type: string
  inputBinding:
    prefix: --output
- id: key_form
  doc: Key format of the private key - default PEM
  type: string
  inputBinding:
    prefix: --keyform
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrsa-decrypt
