version 1.0

task Fastaclean {
  command <<<
    fastaclean
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}