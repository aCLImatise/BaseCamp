version 1.0

task GetTargetSpecificKmersStat {
  command <<<
    getTargetSpecificKmersStat
  >>>
  output {
    File out_stdout = stdout()
  }
}