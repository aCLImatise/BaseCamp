version 1.0

task OmeroAdminDiagnostics {
  input {
    Boolean? no_logs
  }
  command <<<
    omero admin diagnostics \
      ~{true="--no-logs" false="" no_logs}
  >>>
  parameter_meta {
    no_logs: "Skip log parsing"
  }
}