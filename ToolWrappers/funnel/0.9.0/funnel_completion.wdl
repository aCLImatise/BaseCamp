version 1.0

task FunnelCompletion {
  input {
    String bash
  }
  command <<<
    funnel completion \
      ~{bash}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bash: "Generate bash completion code"
  }
  output {
    File out_stdout = stdout()
  }
}