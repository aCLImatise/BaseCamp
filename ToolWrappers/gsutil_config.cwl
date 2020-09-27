class: CommandLineTool
id: gsutil_config.cwl
inputs:
- id: in_see_options_cause
  doc: (see OPTIONS below) cause gsutil config to request a token
  type: string
  inputBinding:
    prefix: -f
- id: in_prompt_google_cloud
  doc: "Prompt for Google Cloud Storage access key and secret (the older\nauthentication\
    \ method before OAuth2 was supported) instead of\nobtaining an OAuth2 token."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_causes_config_launch
  doc: "Causes gsutil config to launch a browser to obtain OAuth2 approval\nand the\
    \ project ID instead of showing the URL for each and asking\nthe user to open\
    \ the browser. This will probably not work as\nexpected if you are running gsutil\
    \ from an ssh window, or using\ngsutil on Windows."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_prompt_service_account
  doc: Prompt for service account credentials. This option requires that
  type: boolean
  inputBinding:
    prefix: -e
- id: in_write_configuration_file_authentication
  doc: "Write the configuration file without authentication configured.\nThis flag\
    \ is mutually exlusive with all flags other than -o."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_write_configuration_file_instead
  doc: "Write the configuration to <file> instead of ~/.boto.\nUse '-' for stdout."
  type: File
  inputBinding:
    prefix: -o
- id: in_request_token_restricted_readonly
  doc: Request token restricted to read-only access.
  type: boolean
  inputBinding:
    prefix: -r
- id: in_request_additional_oauth
  doc: Request additional OAuth2 <scope>.
  type: long
  inputBinding:
    prefix: -s
- id: in_request_token_restricted_readwrite
  doc: Request token restricted to read-write access.
  type: boolean
  inputBinding:
    prefix: -w
- id: in_scopes_dot
  doc: If you want to use credentials based on access key and secret (the older
  type: string
  inputBinding:
    position: 0
- id: in_aws_access_key_id
  doc: aws_secret_access_key
  type: string
  inputBinding:
    position: 0
- id: in_gs_access_key_id
  doc: gs_host
  type: string
  inputBinding:
    position: 1
- id: in_gs_json_host
  doc: gs_json_port
  type: string
  inputBinding:
    position: 2
- id: in_s_three_port
  doc: '[Boto]'
  type: long
  inputBinding:
    position: 3
- id: in_proxy
  doc: proxy_port
  type: string
  inputBinding:
    position: 4
- id: in_proxy_user
  doc: proxy_pass
  type: string
  inputBinding:
    position: 5
- id: in_proxy_rdns
  doc: http_socket_timeout
  type: string
  inputBinding:
    position: 6
- id: in_https_validate_certificates
  doc: debug
  type: string
  inputBinding:
    position: 7
- id: in_service_account
  doc: '[GSUtil]'
  type: string
  inputBinding:
    position: 0
- id: in_check_hashes
  doc: content_language
  type: string
  inputBinding:
    position: 1
- id: in_default_api_version
  doc: default_project_id
  type: string
  inputBinding:
    position: 0
- id: in_disable_analytics_prompt
  doc: encryption_key
  type: string
  inputBinding:
    position: 1
- id: in_json_api_version
  doc: parallel_composite_upload_component_size
  type: string
  inputBinding:
    position: 2
- id: in_parallel_composite_upload_threshold
  doc: sliced_object_download_component_size
  type: string
  inputBinding:
    position: 3
- id: in_sliced_object_download_max_components
  doc: sliced_object_download_threshold
  type: string
  inputBinding:
    position: 4
- id: in_parallel_process_count
  doc: parallel_thread_count
  type: string
  inputBinding:
    position: 5
- id: in_prefer_api
  doc: resumable_threshold
  type: string
  inputBinding:
    position: 6
- id: in_use_magic_file
  doc: '[OAuth2]'
  type: string
  inputBinding:
    position: 0
- id: in_client_id
  doc: client_secret
  type: string
  inputBinding:
    position: 1
- id: in_o_auth_two_refresh_retries
  doc: provider_authorization_uri
  type: long
  inputBinding:
    position: 2
- id: in_token_cache
  doc: UPDATING TO THE LATEST CONFIGURATION FILE
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- config
