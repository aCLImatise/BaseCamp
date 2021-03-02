version 1.0

task Bamsormadup {
  command <<<
    bamsormadup
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}