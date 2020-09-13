version 1.0

task DEploidDbg {
  command <<<
    dEploid_dbg
  >>>
  output {
    File out_stdout = stdout()
  }
}