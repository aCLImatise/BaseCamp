class: CommandLineTool
id: storescu.cwl
inputs:
- id: peer
  doc: hostname of DICOM peer
  type: string
  inputBinding:
    position: 0
- id: port
  doc: tcp/ip port number of peer
  type: string
  inputBinding:
    position: 1
- id: dcm_file_in
  doc: DICOM file or directory to be transmitted
  type: string
  inputBinding:
    position: 2
- id: f
  doc: --read-dataset       read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: ae_title
  doc: '[a]etitle: string set my calling AE title (default: STORESCU)'
  type: boolean
  inputBinding:
    prefix: --aetitle
- id: call
  doc: '[a]etitle: string set called AE title of peer (default: ANY-SCP)'
  type: boolean
  inputBinding:
    prefix: --call
- id: xf
  doc: '--config-file        [f]ilename, [p]rofile: string use profile p from config
    file f'
  type: boolean
  inputBinding:
    prefix: -xf
- id: u
  doc: --disable-new-vr     disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: user
  doc: '[u]ser name: string authenticate using user name u'
  type: boolean
  inputBinding:
    prefix: --user
- id: password
  doc: '[p]assword: string (only with --user) authenticate using password p'
  type: boolean
  inputBinding:
    prefix: --password
- id: empty_password
  doc: send empty password (only with --user)
  type: boolean
  inputBinding:
    prefix: --empty-password
- id: kt
  doc: '--kerberos           [f]ilename: string read kerberos ticket from file f --saml               [f]ilename:
    string read SAML request from file f'
  type: boolean
  inputBinding:
    prefix: -kt
- id: pos_response
  doc: expect positive response
  type: boolean
  inputBinding:
    prefix: --pos-response
- id: pw
  doc: --null-passwd        use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: pem_keys
  doc: read keys and certificates as PEM file (default)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: der_keys
  doc: read keys and certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: rc
  doc: --require-peer-cert  verify peer certificate, fail if absent (default)
  type: boolean
  inputBinding:
    prefix: -rc
- id: vc
  doc: --verify-peer-cert   verify peer certificate if present
  type: boolean
  inputBinding:
    prefix: -vc
- id: ic
  doc: --ignore-peer-cert   don't verify peer certificate
  type: boolean
  inputBinding:
    prefix: -ic
outputs: []
cwlVersion: v1.1
baseCommand:
- storescu
