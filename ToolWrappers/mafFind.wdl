version 1.0

task MafFind {
  command <<<
    mafFind
  >>>
  output {
    File out_stdout = stdout()
  }
}