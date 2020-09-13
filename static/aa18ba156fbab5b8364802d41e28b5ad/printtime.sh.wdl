version 1.0

task Printtimesh {
  input {
    File filename
  }
  command <<<
    printtime_sh \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}