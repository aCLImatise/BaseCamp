version 1.0

task DbSNPIdx {
  command <<<
    dbSNP_idx
  >>>
  output {
    File out_stdout = stdout()
  }
}