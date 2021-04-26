version 1.0

task CoolboxCurrentRangeInsert {
  input {
    String index
    String var_object
  }
  command <<<
    coolbox current_range insert \
      ~{index} \
      ~{var_object}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0"
  }
  parameter_meta {
    index: ""
    var_object: ""
  }
  output {
    File out_stdout = stdout()
  }
}