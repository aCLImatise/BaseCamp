version 1.0

task Vendian {
  input {
    String bytes
    File filename
  }
  command <<<
    vendian \
      ~{bytes} \
      ~{filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bytes: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}