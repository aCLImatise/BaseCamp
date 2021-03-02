version 1.0

task Mkvtree {
  input {
    String index_name
  }
  command <<<
    mkvtree \
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