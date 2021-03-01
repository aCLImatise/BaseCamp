version 1.0

task GdcclientUpload {
  input {
    Boolean? debug
    File? log_file
    Boolean? color_off
    File? token_file
    File? project_id
    File? path
    String? upload_id
    Boolean? insecure
    String? server
    Int? part_size
    Int? upload_part_size
    Int? n_processes
    Boolean? disable_multipart
    Boolean? abort
    Boolean? resume
    Boolean? delete
    String? manifest
    File? config
    String file_id
  }
  command <<<
    gdc_client upload \
      ~{file_id} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (color_off) then "--color_off" else ""} \
      ~{if defined(token_file) then ("--token-file " +  '"' + token_file + '"') else ""} \
      ~{if defined(project_id) then ("--project-id " +  '"' + project_id + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(upload_id) then ("--upload-id " +  '"' + upload_id + '"') else ""} \
      ~{if (insecure) then "--insecure" else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(part_size) then ("--part-size " +  '"' + part_size + '"') else ""} \
      ~{if defined(upload_part_size) then ("--upload-part-size " +  '"' + upload_part_size + '"') else ""} \
      ~{if defined(n_processes) then ("--n-processes " +  '"' + n_processes + '"') else ""} \
      ~{if (disable_multipart) then "--disable-multipart" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gdc-client:1.6.0--py_0"
  }
  parameter_meta {
    debug: "Enable debug logging. If a failure occurs, the program\\nwill stop."
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
  output {
    File out_stdout = stdout()
  }
}