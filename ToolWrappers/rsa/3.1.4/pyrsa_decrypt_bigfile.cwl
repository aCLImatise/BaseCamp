class: CommandLineTool
id: pyrsa_decrypt_bigfile.cwl
inputs:
- id: in_input
  doc: "Name of the file to decrypt. Reads from stdin if not\nspecified."
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Name of the file to write the decrypted file to.\nWritten to stdout if this\
    \ option is not present."
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyrsa-decrypt-bigfile
