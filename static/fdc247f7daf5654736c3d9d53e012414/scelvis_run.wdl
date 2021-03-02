version 1.0

task ScelvisRun {
  input {
    Boolean? debug
    String? host
    String? port
    Boolean? fake_data
    File? data_source
    String? public_url_prefix
    File? cache_dir
    String? cache_red_is_url
    String? cache_default_timeout
    Boolean? cache_preload_data
    Directory? upload_dir
    Int? max_upload_data_size
    Boolean? disable_upload
    Boolean? disable_conversion
    File? custom_home_md
    Directory? custom_static_folder
    String? i_rods_client_server_negotiation
    String? i_rods_client_server_policy
    String? i_rods_ssl_verify_server
    String? i_rods_encryption_algorithm
    Int? i_rods_encryption_key_size
    Int? i_rods_encryption_num_hash_rounds
    Int? i_rods_encryption_salt_size
  }
  command <<<
    scelvis run \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (fake_data) then "--fake-data" else ""} \
      ~{if defined(data_source) then ("--data-source " +  '"' + data_source + '"') else ""} \
      ~{if defined(public_url_prefix) then ("--public-url-prefix " +  '"' + public_url_prefix + '"') else ""} \
      ~{if defined(cache_dir) then ("--cache-dir " +  '"' + cache_dir + '"') else ""} \
      ~{if defined(cache_red_is_url) then ("--cache-redis-url " +  '"' + cache_red_is_url + '"') else ""} \
      ~{if defined(cache_default_timeout) then ("--cache-default-timeout " +  '"' + cache_default_timeout + '"') else ""} \
      ~{if (cache_preload_data) then "--cache-preload-data" else ""} \
      ~{if defined(upload_dir) then ("--upload-dir " +  '"' + upload_dir + '"') else ""} \
      ~{if defined(max_upload_data_size) then ("--max-upload-data-size " +  '"' + max_upload_data_size + '"') else ""} \
      ~{if (disable_upload) then "--disable-upload" else ""} \
      ~{if (disable_conversion) then "--disable-conversion" else ""} \
      ~{if defined(custom_home_md) then ("--custom-home-md " +  '"' + custom_home_md + '"') else ""} \
      ~{if defined(custom_static_folder) then ("--custom-static-folder " +  '"' + custom_static_folder + '"') else ""} \
      ~{if defined(i_rods_client_server_negotiation) then ("--irods-client-server-negotiation " +  '"' + i_rods_client_server_negotiation + '"') else ""} \
      ~{if defined(i_rods_client_server_policy) then ("--irods-client-server-policy " +  '"' + i_rods_client_server_policy + '"') else ""} \
      ~{if defined(i_rods_ssl_verify_server) then ("--irods-ssl-verify-server " +  '"' + i_rods_ssl_verify_server + '"') else ""} \
      ~{if defined(i_rods_encryption_algorithm) then ("--irods-encryption-algorithm " +  '"' + i_rods_encryption_algorithm + '"') else ""} \
      ~{if defined(i_rods_encryption_key_size) then ("--irods-encryption-key-size " +  '"' + i_rods_encryption_key_size + '"') else ""} \
      ~{if defined(i_rods_encryption_num_hash_rounds) then ("--irods-encryption-num-hash-rounds " +  '"' + i_rods_encryption_num_hash_rounds + '"') else ""} \
      ~{if defined(i_rods_encryption_salt_size) then ("--irods-encryption-salt-size " +  '"' + i_rods_encryption_salt_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Enable debug mode"
    host: "Server host"
    port: "Server port"
    fake_data: "Enable display of fake data set (for demo purposes)."
    data_source: "Path to data source(s)"
    public_url_prefix: "The prefix that this app will be served under (e.g.,\\nif behind a reverse proxy.)"
    cache_dir: "Path to cache directory, default is to autocreate one."
    cache_red_is_url: "Redis URL to use for caching, enables Redis cache"
    cache_default_timeout: "Default timeout for cache"
    cache_preload_data: "whether to preload data at startup"
    upload_dir: "Directory for visualization uploads, default is to\\ncreate temporary directory"
    max_upload_data_size: "Maximal size for data upload in bytes"
    disable_upload: "Whether or not to disable visualization uploads"
    disable_conversion: "Directory for visualization uploads, default is to\\ncreate temporary directory"
    custom_home_md: "Use custom markdown file for home screen"
    custom_static_folder: "Use custom static folder for files included in home\\nscreen markdown file"
    i_rods_client_server_negotiation: "IRODS setting"
    i_rods_client_server_policy: "IRODS setting"
    i_rods_ssl_verify_server: "IRODS setting"
    i_rods_encryption_algorithm: "IRODS setting"
    i_rods_encryption_key_size: "IRODS setting"
    i_rods_encryption_num_hash_rounds: "IRODS setting"
    i_rods_encryption_salt_size: "IRODS setting\\n"
  }
  output {
    File out_stdout = stdout()
  }
}