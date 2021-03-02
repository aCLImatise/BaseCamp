class: CommandLineTool
id: keytool.cwl
inputs:
- id: in_cert_req
  doc: Generates a certificate request
  type: boolean?
  inputBinding:
    prefix: -certreq
- id: in_change_alias
  doc: Changes an entry's alias
  type: boolean?
  inputBinding:
    prefix: -changealias
- id: in_delete
  doc: Deletes an entry
  type: boolean?
  inputBinding:
    prefix: -delete
- id: in_export_cert
  doc: Exports certificate
  type: boolean?
  inputBinding:
    prefix: -exportcert
- id: in_gen_key_pair
  doc: Generates a key pair
  type: boolean?
  inputBinding:
    prefix: -genkeypair
- id: in_gen_sec_key
  doc: Generates a secret key
  type: boolean?
  inputBinding:
    prefix: -genseckey
- id: in_gen_cert
  doc: Generates certificate from a certificate request
  type: boolean?
  inputBinding:
    prefix: -gencert
- id: in_import_cert
  doc: Imports a certificate or a certificate chain
  type: boolean?
  inputBinding:
    prefix: -importcert
- id: in_import_pass
  doc: Imports a password
  type: boolean?
  inputBinding:
    prefix: -importpass
- id: in_import_keystore
  doc: Imports one or all entries from another keystore
  type: boolean?
  inputBinding:
    prefix: -importkeystore
- id: in_key_passwd
  doc: Changes the key password of an entry
  type: boolean?
  inputBinding:
    prefix: -keypasswd
- id: in_list
  doc: Lists entries in a keystore
  type: boolean?
  inputBinding:
    prefix: -list
- id: in_print_cert
  doc: Prints the content of a certificate
  type: boolean?
  inputBinding:
    prefix: -printcert
- id: in_print_cert_req
  doc: Prints the content of a certificate request
  type: boolean?
  inputBinding:
    prefix: -printcertreq
- id: in_print_crl
  doc: Prints the content of a CRL file
  type: boolean?
  inputBinding:
    prefix: -printcrl
- id: in_store_passwd
  doc: Changes the store password of a keystore
  type: boolean?
  inputBinding:
    prefix: -storepasswd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- keytool
