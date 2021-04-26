version 1.0

task CoolboxCurrentRangeExtend {
  input {
    String iterable
  }
  command <<<
    coolbox current_range extend \
      ~{iterable}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0"
  }
  parameter_meta {
    iterable: ""
  }
  output {
    File out_stdout = stdout()
  }
}