class: CommandLineTool
id: pyrsa_keygen.cwl
inputs:
- id: in_pub_out
  doc: "Output filename for the public key. The public key is not\nsaved if this option\
    \ is not present. You can use pyrsa-\npriv2pub to create the public key file later."
  type: File?
  inputBinding:
    prefix: --pubout
- id: in_out
  doc: "Output filename for the private key. The key is written\nto stdout if this\
    \ option is not present."
  type: File?
  inputBinding:
    prefix: --out
- id: in_form
  doc: key format of the private and public keys - default PEM
  type: string?
  inputBinding:
    prefix: --form
- id: in_key_size
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pub_out
  doc: "Output filename for the public key. The public key is not\nsaved if this option\
    \ is not present. You can use pyrsa-\npriv2pub to create the public key file later."
  type: File?
  outputBinding:
    glob: $(inputs.in_pub_out)
- id: out_out
  doc: "Output filename for the private key. The key is written\nto stdout if this\
    \ option is not present."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- pyrsa-keygen
