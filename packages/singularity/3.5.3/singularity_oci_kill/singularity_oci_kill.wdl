version 1.0

task SingularityOciKill {
  input {
    Boolean? force
    String? signal
    Int? timeout
    String? kill
    String? options_dot_dot_dot
  }
  command <<<
    singularity oci kill \
      ~{kill} \
      ~{options_dot_dot_dot} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""}
  >>>
  parameter_meta {
    force: "kill container process with SIGKILL"
    signal: "signal sent to the container (default \\\"SIGTERM\\\")"
    timeout: "timeout in second before killing container"
    kill: ""
    options_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}