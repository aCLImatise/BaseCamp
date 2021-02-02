version 1.0

task Unicode2asciish {
  input {
    String in
  }
  command <<<
    unicode2ascii_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}