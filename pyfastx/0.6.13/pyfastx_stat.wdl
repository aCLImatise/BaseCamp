version 1.0

task PyfastxStat {
  command <<<
    pyfastx stat
  >>>
  output {
    File out_stdout = stdout()
  }
}