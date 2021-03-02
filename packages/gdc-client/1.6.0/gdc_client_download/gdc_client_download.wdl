version 1.0

task GdcclientDownload {
  input {
    Boolean? debug
    File? log_file
    Boolean? color_off
    File? token_file
    Directory? dir
    Boolean? no_segment_md_five_sums
    Boolean? no_file_md_five_sum
    Int? n_processes
    Int? http_chunk_size
    Int? save_interval
    Boolean? no_verify
    Boolean? no_related_files
    Boolean? no_annotations
    Boolean? no_auto_retry
    Int? retry_amount
    String? wait_time
    Boolean? latest
    File? config
    File? manifest
    String file_id
    Directory directory
  }
  command <<<
    gdc_client download \
      ~{file_id} \
      ~{directory} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (color_off) then "--color_off" else ""} \
      ~{if defined(token_file) then ("--token-file " +  '"' + token_file + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (no_segment_md_five_sums) then "--no-segment-md5sums" else ""} \
      ~{if (no_file_md_five_sum) then "--no-file-md5sum" else ""} \
      ~{if defined(n_processes) then ("--n-processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(http_chunk_size) then ("--http-chunk-size " +  '"' + http_chunk_size + '"') else ""} \
      ~{if defined(save_interval) then ("--save-interval " +  '"' + save_interval + '"') else ""} \
      ~{if (no_verify) then "--no-verify" else ""} \
      ~{if (no_related_files) then "--no-related-files" else ""} \
      ~{if (no_annotations) then "--no-annotations" else ""} \
      ~{if (no_auto_retry) then "--no-auto-retry" else ""} \
      ~{if defined(retry_amount) then ("--retry-amount " +  '"' + retry_amount + '"') else ""} \
      ~{if defined(wait_time) then ("--wait-time " +  '"' + wait_time + '"') else ""} \
      ~{if (latest) then "--latest" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gdc-client:1.6.0--py_0"
  }
  parameter_meta {
    debug: "Enable debug logging. If a failure occurs, the program\\nwill stop."
    log_file: "Save logs to file. Amount logged affected by --debug"
    color_off: "Disable colored output"
    token_file: "GDC API auth token file"
    dir: "Directory to download files to. Defaults to current"
    no_segment_md_five_sums: "Do not calculate inbound segment md5sums and/or do not\\nverify md5sums on restart"
    no_file_md_five_sum: "Do not verify file md5sum after download"
    n_processes: "Number of client connections."
    http_chunk_size: "Size in bytes of standard HTTP block size."
    save_interval: "The number of chunks after which to flush state file.\\nA lower save interval will result in more frequent\\nprintout but lower performance."
    no_verify: "Perform insecure SSL connection and transfer"
    no_related_files: "Do not download related files."
    no_annotations: "Do not download annotations."
    no_auto_retry: "Ask before retrying to download a file"
    retry_amount: "Number of times to retry a download"
    wait_time: "Amount of seconds to wait before retrying"
    latest: "Download latest version of a file if it exists"
    config: "Path to INI-type config file"
    manifest: "GDC download manifest file\\n"
    file_id: "The GDC UUID of the file(s) to download"
    directory: "-s server, --server server"
  }
  output {
    File out_stdout = stdout()
  }
}