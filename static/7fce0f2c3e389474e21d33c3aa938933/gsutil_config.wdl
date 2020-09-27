version 1.0

task GsutilConfig {
  input {
    String? see_options_cause
    Boolean? prompt_google_cloud
    Boolean? causes_config_launch
    Boolean? prompt_service_account
    Boolean? write_configuration_file_authentication
    File? write_configuration_file_instead
    Boolean? request_token_restricted_readonly
    Int? request_additional_oauth
    Boolean? request_token_restricted_readwrite
    String scopes_dot
    String aws_access_key_id
    String gs_access_key_id
    String gs_json_host
    Int s_three_port
    String proxy
    String proxy_user
    String proxy_rdns
    String https_validate_certificates
    String service_account
    String check_hashes
    String default_api_version
    String disable_analytics_prompt
    String json_api_version
    String parallel_composite_upload_threshold
    String sliced_object_download_max_components
    String parallel_process_count
    String prefer_api
    String use_magic_file
    String client_id
    Int o_auth_two_refresh_retries
    String token_cache
  }
  command <<<
    gsutil config \
      ~{scopes_dot} \
      ~{aws_access_key_id} \
      ~{gs_access_key_id} \
      ~{gs_json_host} \
      ~{s_three_port} \
      ~{proxy} \
      ~{proxy_user} \
      ~{proxy_rdns} \
      ~{https_validate_certificates} \
      ~{service_account} \
      ~{check_hashes} \
      ~{default_api_version} \
      ~{disable_analytics_prompt} \
      ~{json_api_version} \
      ~{parallel_composite_upload_threshold} \
      ~{sliced_object_download_max_components} \
      ~{parallel_process_count} \
      ~{prefer_api} \
      ~{use_magic_file} \
      ~{client_id} \
      ~{o_auth_two_refresh_retries} \
      ~{token_cache} \
      ~{if defined(see_options_cause) then ("-f " +  '"' + see_options_cause + '"') else ""} \
      ~{if (prompt_google_cloud) then "-a" else ""} \
      ~{if (causes_config_launch) then "-b" else ""} \
      ~{if (prompt_service_account) then "-e" else ""} \
      ~{if (write_configuration_file_authentication) then "-n" else ""} \
      ~{if defined(write_configuration_file_instead) then ("-o " +  '"' + write_configuration_file_instead + '"') else ""} \
      ~{if (request_token_restricted_readonly) then "-r" else ""} \
      ~{if defined(request_additional_oauth) then ("-s " +  '"' + request_additional_oauth + '"') else ""} \
      ~{if (request_token_restricted_readwrite) then "-w" else ""}
  >>>
  parameter_meta {
    see_options_cause: "(see OPTIONS below) cause gsutil config to request a token"
    prompt_google_cloud: "Prompt for Google Cloud Storage access key and secret (the older\\nauthentication method before OAuth2 was supported) instead of\\nobtaining an OAuth2 token."
    causes_config_launch: "Causes gsutil config to launch a browser to obtain OAuth2 approval\\nand the project ID instead of showing the URL for each and asking\\nthe user to open the browser. This will probably not work as\\nexpected if you are running gsutil from an ssh window, or using\\ngsutil on Windows."
    prompt_service_account: "Prompt for service account credentials. This option requires that"
    write_configuration_file_authentication: "Write the configuration file without authentication configured.\\nThis flag is mutually exlusive with all flags other than -o."
    write_configuration_file_instead: "Write the configuration to <file> instead of ~/.boto.\\nUse '-' for stdout."
    request_token_restricted_readonly: "Request token restricted to read-only access."
    request_additional_oauth: "Request additional OAuth2 <scope>."
    request_token_restricted_readwrite: "Request token restricted to read-write access."
    scopes_dot: "If you want to use credentials based on access key and secret (the older"
    aws_access_key_id: "aws_secret_access_key"
    gs_access_key_id: "gs_host"
    gs_json_host: "gs_json_port"
    s_three_port: "[Boto]"
    proxy: "proxy_port"
    proxy_user: "proxy_pass"
    proxy_rdns: "http_socket_timeout"
    https_validate_certificates: "debug"
    service_account: "[GSUtil]"
    check_hashes: "content_language"
    default_api_version: "default_project_id"
    disable_analytics_prompt: "encryption_key"
    json_api_version: "parallel_composite_upload_component_size"
    parallel_composite_upload_threshold: "sliced_object_download_component_size"
    sliced_object_download_max_components: "sliced_object_download_threshold"
    parallel_process_count: "parallel_thread_count"
    prefer_api: "resumable_threshold"
    use_magic_file: "[OAuth2]"
    client_id: "client_secret"
    o_auth_two_refresh_retries: "provider_authorization_uri"
    token_cache: "UPDATING TO THE LATEST CONFIGURATION FILE"
  }
  output {
    File out_stdout = stdout()
  }
}