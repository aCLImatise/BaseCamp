version 1.0

task Gfapyconvert {
  input {
    File filename
  }
  command <<<
    gfapy_convert \
      ~{filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}