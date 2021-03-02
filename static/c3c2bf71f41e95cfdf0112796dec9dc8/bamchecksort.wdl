version 1.0

task Bamchecksort {
  command <<<
    bamchecksort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}