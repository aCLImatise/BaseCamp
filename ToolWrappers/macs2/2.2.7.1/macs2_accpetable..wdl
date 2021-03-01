version 1.0

task Macs2Accpetable {
  input {
    Int macs_two
  }
  command <<<
    macs2 accpetable_ \
      ~{macs_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    macs_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}