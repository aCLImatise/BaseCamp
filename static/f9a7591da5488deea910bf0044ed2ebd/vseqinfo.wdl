version 1.0

task Vseqinfo {
  input {
    String index_name
  }
  command <<<
    vseqinfo \
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