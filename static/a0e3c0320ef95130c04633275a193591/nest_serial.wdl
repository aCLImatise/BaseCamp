version 1.0

task NestSerial {
  input {
    String script
  }
  command <<<
    nest_serial \
      ~{script}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    script: ""
  }
  output {
    File out_stdout = stdout()
  }
}