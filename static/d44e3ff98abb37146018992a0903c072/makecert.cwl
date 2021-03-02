class: CommandLineTool
id: makecert.cwl
inputs:
- id: in_subject_distinguished_name
  doc: Subject Distinguished Name
  type: string?
  inputBinding:
    prefix: -n
- id: in_in
  doc: Issuer Distinguished Name
  type: string?
  inputBinding:
    prefix: -in
- id: in_create_selfsigned_certificate
  doc: Create a self-signed (root) certificate
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_sv
  doc: Private key file (.PVK) for the subject (created if missing)
  type: File?
  inputBinding:
    prefix: -sv
- id: in_iv
  doc: Private key file (.PVK) for the issuer
  type: File?
  inputBinding:
    prefix: -iv
- id: in_ic
  doc: Extract the issuer's name from the specified certificate
  type: File?
  inputBinding:
    prefix: -ic
- id: in_certificate
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
- makecert
