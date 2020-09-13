version 1.0

task Gfapyvalidate {
  input {
    File filename
  }
  command <<<
    gfapy_validate \
      ~{filename}
  >>>
  parameter_meta {
    filename: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}