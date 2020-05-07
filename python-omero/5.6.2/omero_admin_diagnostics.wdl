version 1.0

task OmeroAdminDiagnostics {
  input {
    Boolean noNoLogs
  }
  command <<<
    omero admin diagnostics \
      ~{true="--no-logs" false="" noNoLogs}
  >>>
}