version 1.0

task Mantis {
  command <<<
    mantis
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}