version 1.0

task Obdistgen {
  input {
    File filename
  }
  command <<<
    obdistgen \
      ~{filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}