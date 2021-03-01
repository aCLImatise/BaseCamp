version 1.0

task BigBedNamedItems {
  command <<<
    bigBedNamedItems
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}