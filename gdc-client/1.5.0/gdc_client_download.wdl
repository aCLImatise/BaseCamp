version 1.0

task GdcClientDownload {
  input {
    Boolean? debug
    String? log_file
    Boolean? color_off
    String? token_file
    String? dir
    String? server
    Boolean? no_segment_md_five_sums
    Boolean? no_file_md_five_sum
    String? n_processes
    String? http_chunk_size
    String? save_interval
    Boolean? no_verify
    Boolean? no_related_files
    Boolean? no_annotations
    Boolean? no_auto_retry
    String? retry_amount
    String? wait_time
    Boolean? latest
    File? config
    String? manifest
    File file_id
  }
  command <<<
    gdc-client download \
      ~{file_id} \
      ~{true="--debug" false="" debug} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{true="--color_off" false="" color_off} \
      ~{if defined(token_file) then ("--token-file " +  '"' + token_file + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{true="--no-segment-md5sums" false="" no_segment_md_five_sums} \
      ~{true="--no-file-md5sum" false="" no_file_md_five_sum} \
      ~{if defined(n_processes) then ("--n-processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(http_chunk_size) then ("--http-chunk-size " +  '"' + http_chunk_size + '"') else ""} \
      ~{if defined(save_interval) then ("--save-interval " +  '"' + save_interval + '"') else ""} \
      ~{true="--no-verify" false="" no_verify} \
      ~{true="--no-related-files" false="" no_related_files} \
      ~{true="--no-annotations" false="" no_annotations} \
      ~{true="--no-auto-retry" false="" no_auto_retry} \
      ~{if defined(retry_amount) then ("--retry-amount " +  '"' + retry_amount + '"') else ""} \
      ~{if defined(wait_time) then ("--wait-time " +  '"' + wait_time + '"') else ""} \
      ~{true="--latest" false="" latest} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""}
  >>>
  parameter_meta {
    debug: "Enable debug logging. If a failure occurs, the program will stop."
    log_file: "Save logs to file. Amount logged affected by --debug"
    color_off: "Disable colored output"
    token_file: "GDC API auth token file"
    dir: "Directory to download files to. Defaults to current directory"
    server: "The TCP server address server[:port]"
    no_segment_md_five_sums: "Do not calculate inbound segment md5sums and/or do not verify md5sums on restart"
    no_file_md_five_sum: "Do not verify file md5sum after download"
    n_processes: "Number of client connections."
    http_chunk_size: "Size in bytes of standard HTTP block size."
    save_interval: "The number of chunks after which to flush state file. A lower save interval will result in more frequent printout but lower performance."
    no_verify: "Perform insecure SSL connection and transfer"
    no_related_files: "Do not download related files."
    no_annotations: "Do not download annotations."
    no_auto_retry: "Ask before retrying to download a file"
    retry_amount: "Number of times to retry a download"
    wait_time: "Amount of seconds to wait before retrying"
    latest: "Download latest version of a file if it exists"
    config: "Path to INI-type config file"
    manifest: "GDC download manifest file"
    file_id: "The GDC UUID of the file(s) to download"
  }
}