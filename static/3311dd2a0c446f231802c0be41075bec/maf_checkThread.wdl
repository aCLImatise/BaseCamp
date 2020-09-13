version 1.0

task MafCheckThread {
  command <<<
    maf_checkThread
  >>>
  output {
    File out_stdout = stdout()
  }
}