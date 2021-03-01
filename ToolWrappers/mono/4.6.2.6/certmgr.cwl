class: CommandLineTool
id: certmgr.cwl
inputs:
- id: in_add
  doc: Add a certificate, CRL or CTL to specified store
  type: boolean?
  inputBinding:
    prefix: -add
- id: in_del
  doc: Remove a certificate, CRL or CTL to specified store
  type: boolean?
  inputBinding:
    prefix: -del
- id: in_put
  doc: Copy a certificate, CRL or CTL from a store to a file
  type: boolean?
  inputBinding:
    prefix: -put
- id: in_list
  doc: List certificates, CRL or CTL in the specified store.
  type: boolean?
  inputBinding:
    prefix: -list
- id: in_ssl
  doc: Download and add certificates from an SSL session
  type: boolean?
  inputBinding:
    prefix: -ssl
- id: in_import_key
  doc: Import PKCS12 privateKey to keypair store.
  type: boolean?
  inputBinding:
    prefix: -importKey
- id: in_adddelput_certificates
  doc: add/del/put certificates
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_crl
  doc: add/del/put certificate revocation lists
  type: boolean?
  inputBinding:
    prefix: -crl
- id: in_ctl
  doc: add/del/put certificate trust lists [unsupported]
  type: boolean?
  inputBinding:
    prefix: -ctl
- id: in_use_store_default
  doc: use the machine certificate store (default to user)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_verbose_mode_display
  doc: verbose mode (display status for every steps)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_password_used_decrypt
  doc: '[password]   Password used to decrypt PKCS12'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_pem
  doc: Put certificate in Base-64 encoded format (default DER encoded)
  type: boolean?
  inputBinding:
    prefix: -pem
- id: in_action
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_object_type
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_store
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_filename
  doc: ''
  type: File?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- certmgr
