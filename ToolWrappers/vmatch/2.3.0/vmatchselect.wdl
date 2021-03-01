version 1.0

task Vmatchselect {
  input {
    String index_name
  }
  command <<<
    vmatchselect \
      ~{index_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}