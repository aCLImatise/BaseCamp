version 1.0

task Gfapyconvert {
  input {
    File filename
  }
  command <<<
    gfapy_convert \
      ~{filename}
  >>>
  parameter_meta {
    filename: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}