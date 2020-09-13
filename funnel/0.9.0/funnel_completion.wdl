version 1.0

task FunnelCompletion {
  input {
    String bash
  }
  command <<<
    funnel completion \
      ~{bash}
  >>>
  parameter_meta {
    bash: "Generate bash completion code"
  }
  output {
    File out_stdout = stdout()
  }
}