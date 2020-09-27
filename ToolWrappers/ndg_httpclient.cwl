class: CommandLineTool
id: ndg_httpclient.cwl
inputs:
- id: in_certificate
  doc: Certificate file - defaults to $HOME/credentials.pem
  type: File
  inputBinding:
    prefix: --certificate
- id: in_private_key
  doc: Private key file - defaults to the certificate file
  type: File
  inputBinding:
    prefix: --private-key
- id: in_ca_certificate_dir
  doc: Trusted CA certificate file directory
  type: File
  inputBinding:
    prefix: --ca-certificate-dir
- id: in_debug
  doc: Print debug information.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_post_data_file
  doc: POST data file
  type: File
  inputBinding:
    prefix: --post-data-file
- id: in_fetch
  doc: Output file
  type: File
  inputBinding:
    prefix: --fetch
- id: in_no_verify_peer
  doc: Skip verification of peer certificate.
  type: boolean
  inputBinding:
    prefix: --no-verify-peer
- id: in_passwd__basicauthuserpasswdhttp
  doc: ":PASSWD, --basicauth=USER:PASSWD\nHTTP authentication credentials"
  type: string
  inputBinding:
    prefix: -a
- id: in_header
  doc: ": VALUE\nAdd HTTP header to request\n"
  type: string
  inputBinding:
    prefix: --header
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fetch
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_fetch)
cwlVersion: v1.1
baseCommand:
- ndg_httpclient
