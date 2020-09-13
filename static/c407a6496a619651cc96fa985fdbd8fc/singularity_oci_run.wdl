version 1.0

task SingularityOciRun {
  input {
    File? bundle
    File? log_format
    File? log_path
    File? pid_file
    File? sync_socket
    String synchronization
  }
  command <<<
    singularity oci run \
      ~{synchronization} \
      ~{if defined(bundle) then ("--bundle " +  '"' + bundle + '"') else ""} \
      ~{if defined(log_format) then ("--log-format " +  '"' + log_format + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(pid_file) then ("--pid-file " +  '"' + pid_file + '"') else ""} \
      ~{if defined(sync_socket) then ("--sync-socket " +  '"' + sync_socket + '"') else ""}
  >>>
  parameter_meta {
    bundle: "specify the OCI bundle path (required)"
    log_format: "specify the log file format. Available\\nformats are basic, kubernetes and json\\n(default \\\"kubernetes\\\")"
    log_path: "specify the log file path"
    pid_file: "specify the pid file"
    sync_socket: "specify the path to unix socket for state"
    synchronization: "Examples:"
  }
  output {
    File out_stdout = stdout()
  }
}