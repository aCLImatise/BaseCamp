version 1.0

task Macs2Results {
  input {
    Int macs_two
  }
  command <<<
    macs2 results_ \
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