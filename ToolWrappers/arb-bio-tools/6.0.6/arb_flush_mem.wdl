version 1.0

task ArbFlushMem {
  command <<<
    arb_flush_mem
  >>>
  output {
    File out_stdout = stdout()
  }
}