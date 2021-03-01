version 1.0

task Bamranksort {
  command <<<
    bamranksort
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}