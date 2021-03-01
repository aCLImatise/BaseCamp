version 1.0

task Secutil {
  input {
    File? filename
  }
  command <<<
    secutil \
      ~{filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}