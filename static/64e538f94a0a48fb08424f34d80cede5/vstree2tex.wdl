version 1.0

task Vstree2tex {
  input {
    String index_name
  }
  command <<<
    vstree2tex \
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