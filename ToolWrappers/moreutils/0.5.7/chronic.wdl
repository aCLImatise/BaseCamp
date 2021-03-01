version 1.0

task Chronic {
  command <<<
    chronic
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}