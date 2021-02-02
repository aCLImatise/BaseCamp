version 1.0

task GcloudDebugTargets {
  input {
    String targets
    String debugger_dot
    String list
  }
  command <<<
    gcloud debug targets \
      ~{targets} \
      ~{debugger_dot} \
      ~{list}
  >>>
  parameter_meta {
    targets: "SYNOPSIS"
    debugger_dot: "GCLOUD WIDE FLAGS"
    list: "List debug targets."
  }
  output {
    File out_stdout = stdout()
  }
}