version 1.0

task BedIntersect {
  command <<<
    bedIntersect
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}