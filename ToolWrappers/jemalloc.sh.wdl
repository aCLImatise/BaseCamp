version 1.0

task Jemallocsh {
  command <<<
    jemalloc_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}