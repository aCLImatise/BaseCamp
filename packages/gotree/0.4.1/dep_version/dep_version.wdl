version 1.0

task DepVersion {
  input {
    String version
    Float go_one_dot_one_five_dot_nine
    String platform
    String features
  }
  command <<<
    dep version \
      ~{version} \
      ~{go_one_dot_one_five_dot_nine} \
      ~{platform} \
      ~{features}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gotree:0.4.1--h375a9b1_0"
  }
  parameter_meta {
    version: ": devel"
    go_one_dot_one_five_dot_nine: "go compiler : gc"
    platform: ": linux/amd64"
    features: ": ImportDuringSolve=false"
  }
  output {
    File out_stdout = stdout()
  }
}