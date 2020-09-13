version 1.0

task AribaPreparerefTb {
  command <<<
    ariba prepareref_tb
  >>>
  output {
    File out_stdout = stdout()
  }
}