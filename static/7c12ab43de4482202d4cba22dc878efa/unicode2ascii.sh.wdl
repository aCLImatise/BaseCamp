version 1.0

task Unicode2asciish {
  input {
    String in
  }
  command <<<
    unicode2ascii_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}