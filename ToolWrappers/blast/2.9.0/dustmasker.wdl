version 1.0

task Dustmasker {
  command <<<
    dustmasker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}