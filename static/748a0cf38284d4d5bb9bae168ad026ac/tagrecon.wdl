version 1.0

task Tagrecon {
  command <<<
    tagrecon
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}