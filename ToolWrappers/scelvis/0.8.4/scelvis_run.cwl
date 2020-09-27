class: CommandLineTool
id: scelvis_run.cwl
inputs:
- id: in_debug
  doc: Enable debug mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_host
  doc: Server host
  type: string
  inputBinding:
    prefix: --host
- id: in_port
  doc: Server port
  type: string
  inputBinding:
    prefix: --port
- id: in_fake_data
  doc: Enable display of fake data set (for demo purposes).
  type: boolean
  inputBinding:
    prefix: --fake-data
- id: in_data_source
  doc: Path to data source(s)
  type: File
  inputBinding:
    prefix: --data-source
- id: in_public_url_prefix
  doc: "The prefix that this app will be served under (e.g.,\nif behind a reverse\
    \ proxy.)"
  type: string
  inputBinding:
    prefix: --public-url-prefix
- id: in_cache_dir
  doc: Path to cache directory, default is to autocreate one.
  type: File
  inputBinding:
    prefix: --cache-dir
- id: in_cache_red_is_url
  doc: Redis URL to use for caching, enables Redis cache
  type: string
  inputBinding:
    prefix: --cache-redis-url
- id: in_cache_default_timeout
  doc: Default timeout for cache
  type: string
  inputBinding:
    prefix: --cache-default-timeout
- id: in_cache_preload_data
  doc: whether to preload data at startup
  type: boolean
  inputBinding:
    prefix: --cache-preload-data
- id: in_upload_dir
  doc: "Directory for visualization uploads, default is to\ncreate temporary directory"
  type: Directory
  inputBinding:
    prefix: --upload-dir
- id: in_max_upload_data_size
  doc: Maximal size for data upload in bytes
  type: long
  inputBinding:
    prefix: --max-upload-data-size
- id: in_disable_upload
  doc: Whether or not to disable visualization uploads
  type: boolean
  inputBinding:
    prefix: --disable-upload
- id: in_disable_conversion
  doc: "Directory for visualization uploads, default is to\ncreate temporary directory"
  type: boolean
  inputBinding:
    prefix: --disable-conversion
- id: in_custom_home_md
  doc: Use custom markdown file for home screen
  type: File
  inputBinding:
    prefix: --custom-home-md
- id: in_custom_static_folder
  doc: "Use custom static folder for files included in home\nscreen markdown file"
  type: Directory
  inputBinding:
    prefix: --custom-static-folder
- id: in_i_rods_client_server_negotiation
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-client-server-negotiation
- id: in_i_rods_client_server_policy
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-client-server-policy
- id: in_i_rods_ssl_verify_server
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-ssl-verify-server
- id: in_i_rods_encryption_algorithm
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-encryption-algorithm
- id: in_i_rods_encryption_key_size
  doc: IRODS setting
  type: long
  inputBinding:
    prefix: --irods-encryption-key-size
- id: in_i_rods_encryption_num_hash_rounds
  doc: IRODS setting
  type: long
  inputBinding:
    prefix: --irods-encryption-num-hash-rounds
- id: in_i_rods_encryption_salt_size
  doc: "IRODS setting\n"
  type: long
  inputBinding:
    prefix: --irods-encryption-salt-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scelvis
- run
