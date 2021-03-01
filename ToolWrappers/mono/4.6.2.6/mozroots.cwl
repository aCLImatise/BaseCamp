class: CommandLineTool
id: mozroots.cwl
inputs:
- id: in_import
  doc: Import the certificates into the trust store.
  type: boolean?
  inputBinding:
    prefix: --import
- id: in_sync
  doc: Synchronize (add/remove) the trust store with the certificates.
  type: boolean?
  inputBinding:
    prefix: --sync
- id: in_ask
  doc: Always confirm before adding or removing trusted certificates.
  type: boolean?
  inputBinding:
    prefix: --ask
- id: in_ask_add
  doc: Always confirm before adding a new trusted certificate.
  type: boolean?
  inputBinding:
    prefix: --ask-add
- id: in_ask_remove
  doc: Always confirm before removing an existing trusted certificate.
  type: boolean?
  inputBinding:
    prefix: --ask-remove
- id: in_url
  doc: "Specify an alternative URL for downloading the trusted\ncertificates (MXR\
    \ source format)."
  type: string?
  inputBinding:
    prefix: --url
- id: in_file
  doc: Do not download but use the specified file.
  type: File?
  inputBinding:
    prefix: --file
- id: in_pkcs_seven
  doc: Export the certificates into a PKCS#7 file.
  type: long?
  inputBinding:
    prefix: --pkcs7
- id: in_machine
  doc: "Import the certificate in the machine trust store.\nThe default is to import\
    \ into the user store."
  type: boolean?
  inputBinding:
    prefix: --machine
- id: in_quiet
  doc: Limit console output to errors and confirmations messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mozroots
