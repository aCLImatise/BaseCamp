version 1.0

task GdcClientUpload {
  input {
    Boolean? debug
    String? log_file
    Boolean? color_off
    String? token_file
    String? project_id
    File? path
    String? upload_id
    Boolean? insecure
    String? server
    String? part_size
    String? upload_part_size
    String? n_processes
    Boolean? disable_multipart
    Boolean? abort
    Boolean? resume
    Boolean? delete
    String? manifest
    File? config
    File file_id
  }
  command <<<
    gdc-client upload \
      ~{file_id} \
      ~{true="--debug" false="" debug} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{true="--color_off" false="" color_off} \
      ~{if defined(token_file) then ("--token-file " +  '"' + token_file + '"') else ""} \
      ~{if defined(project_id) then ("--project-id " +  '"' + project_id + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(upload_id) then ("--upload-id " +  '"' + upload_id + '"') else ""} \
      ~{true="--insecure" false="" insecure} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(part_size) then ("--part-size " +  '"' + part_size + '"') else ""} \
      ~{if defined(upload_part_size) then ("--upload-part-size " +  '"' + upload_part_size + '"') else ""} \
      ~{if defined(n_processes) then ("--n-processes " +  '"' + n_processes + '"') else ""} \
      ~{true="--disable-multipart" false="" disable_multipart} \
      ~{true="--abort" false="" abort} \
      ~{true="--resume" false="" resume} \
      ~{true="--delete" false="" delete} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    debug: "Enable debug logging. If a failure occurs, the program will stop."
    log_file: "Save logs to file. Amount logged affected by --debug"
    color_off: "Disable colored output"
    token_file: "GDC API auth token file"
    project_id: "The project ID that owns the file"
    path: "directory path to find file"
    upload_id: "Multipart upload id"
    insecure: "Allow connections to server without certs"
    server: "GDC API server address"
    part_size: "DEPRECATED in favor of [--upload-part-size]"
    upload_part_size: "Part size for multipart upload"
    n_processes: "Number of client connections"
    disable_multipart: "Disable multipart upload"
    abort: "Abort previous multipart upload"
    resume: "Resume previous multipart upload"
    delete: "Delete an uploaded file"
    manifest: "Manifest which describes files to be uploaded"
    config: "Path to INI-type config file"
    file_id: "The GDC UUID of the file(s) to upload"
  }
}