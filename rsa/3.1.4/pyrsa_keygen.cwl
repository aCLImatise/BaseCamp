class: CommandLineTool
id: pyrsa_keygen.cwl
inputs:
- id: key_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pub_out
  doc: Output filename for the public key. The public key is not saved if this option
    is not present. You can use pyrsa- priv2pub to create the public key file later.
  type: string
  inputBinding:
    prefix: --pubout
- id: out
  doc: Output filename for the private key. The key is written to stdout if this option
    is not present.
  type: string
  inputBinding:
    prefix: --out
- id: form
  doc: key format of the private and public keys - default PEM
  type: string
  inputBinding:
    prefix: --form
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrsa-keygen
