version 1.0

task Mod {
  input {
    String url
  }
  command <<<
    mod \
      ~{url}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}