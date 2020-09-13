version 1.0

task FunnelExamples {
  input {
    String? name
  }
  command <<<
    funnel examples \
      ~{name}
  >>>
  parameter_meta {
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}