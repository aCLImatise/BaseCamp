version 1.0

task Toil {
  command <<<
    toil
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}