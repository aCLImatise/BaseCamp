version 1.0

task DeepacExplainDetails {
  input {
    String deep_ac
    String explain
  }
  command <<<
    deepac explain details_ \
      ~{deep_ac} \
      ~{explain}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    deep_ac: ""
    explain: ""
  }
  output {
    File out_stdout = stdout()
  }
}