version 1.0

task ArbFlushMem {
  command <<<
    arb_flush_mem
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}