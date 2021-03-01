class: CommandLineTool
id: signcode.cwl
inputs:
- id: in_spc
  doc: Software Publisher Certificate file
  type: File?
  inputBinding:
    prefix: -spc
- id: in_private_key_file
  doc: Private Key file
  type: File?
  inputBinding:
    prefix: -v
- id: in_md_hash_algorithm
  doc: '| md5   Hash Algorithm (default: SHA1)'
  type: long?
  inputBinding:
    prefix: -a
- id: in_description_signed_file
  doc: Description for the signed file
  type: File?
  inputBinding:
    prefix: -n
- id: in_url_signed_file
  doc: URL for the signed file
  type: File?
  inputBinding:
    prefix: -i
- id: in_timestamp_service_http
  doc: Timestamp service http URL
  type: string?
  inputBinding:
    prefix: -t
- id: in_tr
  doc: '#   Number of retries for timestamp'
  type: boolean?
  inputBinding:
    prefix: -tr
- id: in_tw
  doc: '#   Delay between retries'
  type: boolean?
  inputBinding:
    prefix: -tw
- id: in_only_timestamp_signature
  doc: Only timestamp (no signature)
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_key_container_name
  doc: Key Container Name
  type: string?
  inputBinding:
    prefix: -k
- id: in_provider_name
  doc: Provider Name
  type: string?
  inputBinding:
    prefix: -p
- id: in__provider_type
  doc: '#    Provider Type'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_ky
  doc: '[signature|exchange|#]      Key Type'
  type: boolean?
  inputBinding:
    prefix: -ky
- id: in__key_location
  doc: '[localMachine|currentUser]   Key Location'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- signcode
