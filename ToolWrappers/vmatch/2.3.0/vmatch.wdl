version 1.0

task Vmatch {
  input {
    String index_name
  }
  command <<<
    vmatch \
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