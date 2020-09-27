version 1.0

task Showcorrects {
  input {
    File filename
  }
  command <<<
    show_corrects \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}