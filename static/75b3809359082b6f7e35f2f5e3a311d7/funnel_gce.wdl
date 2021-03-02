version 1.0

task FunnelGce {
  input {
    String run
  }
  command <<<
    funnel gce \
      ~{run}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run: "Flags:"
  }
  output {
    File out_stdout = stdout()
  }
}