version 1.0

task BedGeneParts {
  command <<<
    bedGeneParts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}