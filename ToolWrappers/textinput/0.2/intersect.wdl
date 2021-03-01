version 1.0

task Intersect {
  command <<<
    intersect
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}