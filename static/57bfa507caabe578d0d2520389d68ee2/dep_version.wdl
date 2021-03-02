version 1.0

task DepVersion {
  input {
    String version
    Float go_one_dot_one_three_dot_five
    String platform
    String features
  }
  command <<<
    dep version \
      ~{version} \
      ~{go_one_dot_one_three_dot_five} \
      ~{platform} \
      ~{features}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version: ": devel"
    go_one_dot_one_three_dot_five: "go compiler : gc"
    platform: ": linux/amd64"
    features: ": ImportDuringSolve=false"
  }
  output {
    File out_stdout = stdout()
  }
}