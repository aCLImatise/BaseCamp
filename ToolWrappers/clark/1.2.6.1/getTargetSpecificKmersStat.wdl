version 1.0

task GetTargetSpecificKmersStat {
  command <<<
    getTargetSpecificKmersStat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}