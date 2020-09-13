version 1.0

task KmerFilter {
  command <<<
    KmerFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}