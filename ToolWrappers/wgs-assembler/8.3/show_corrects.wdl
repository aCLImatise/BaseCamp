version 1.0

task Showcorrects {
  input {
    File filename
  }
  command <<<
    show_corrects \
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