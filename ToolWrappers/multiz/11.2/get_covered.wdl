version 1.0

task GetCovered {
  command <<<
    get_covered
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}