class: CommandLineTool
id: scelvis_run.cwl
inputs:
- id: debug
  doc: Enable debug mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: host
  doc: Server host
  type: string
  inputBinding:
    prefix: --host
- id: port
  doc: Server port
  type: string
  inputBinding:
    prefix: --port
- id: fake_data
  doc: Enable display of fake data set (for demo purposes).
  type: boolean
  inputBinding:
    prefix: --fake-data
- id: data_source
  doc: Path to data source(s)
  type: string
  inputBinding:
    prefix: --data-source
- id: public_url_prefix
  doc: The prefix that this app will be served under (e.g., if behind a reverse proxy.)
  type: string
  inputBinding:
    prefix: --public-url-prefix
- id: cache_dir
  doc: Path to cache directory, default is to autocreate one.
  type: string
  inputBinding:
    prefix: --cache-dir
- id: cache_red_is_url
  doc: Redis URL to use for caching, enables Redis cache
  type: string
  inputBinding:
    prefix: --cache-redis-url
- id: cache_default_timeout
  doc: Default timeout for cache
  type: string
  inputBinding:
    prefix: --cache-default-timeout
- id: cache_preload_data
  doc: whether to preload data at startup
  type: boolean
  inputBinding:
    prefix: --cache-preload-data
- id: upload_dir
  doc: Directory for visualization uploads, default is to create temporary directory
  type: string
  inputBinding:
    prefix: --upload-dir
- id: max_upload_data_size
  doc: Maximal size for data upload in bytes
  type: long
  inputBinding:
    prefix: --max-upload-data-size
- id: disable_upload
  doc: Whether or not to disable visualization uploads
  type: boolean
  inputBinding:
    prefix: --disable-upload
- id: disable_conversion
  doc: Directory for visualization uploads, default is to create temporary directory
  type: boolean
  inputBinding:
    prefix: --disable-conversion
- id: custom_home_md
  doc: Use custom markdown file for home screen
  type: string
  inputBinding:
    prefix: --custom-home-md
- id: custom_static_folder
  doc: Use custom static folder for files included in home screen markdown file
  type: string
  inputBinding:
    prefix: --custom-static-folder
- id: i_rods_client_server_negotiation
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-client-server-negotiation
- id: i_rods_client_server_policy
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-client-server-policy
- id: i_rods_ssl_verify_server
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-ssl-verify-server
- id: i_rods_encryption_algorithm
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-encryption-algorithm
- id: i_rods_encryption_key_size
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-encryption-key-size
- id: i_rods_encryption_num_hash_rounds
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-encryption-num-hash-rounds
- id: i_rods_encryption_salt_size
  doc: IRODS setting
  type: string
  inputBinding:
    prefix: --irods-encryption-salt-size
outputs: []
cwlVersion: v1.1
baseCommand:
- scelvis
- run
