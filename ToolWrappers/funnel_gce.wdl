version 1.0

task FunnelGce {
  input {
    String run
  }
  command <<<
    funnel gce \
      ~{run}
  >>>
  parameter_meta {
    run: "Flags:"
  }
  output {
    File out_stdout = stdout()
  }
}