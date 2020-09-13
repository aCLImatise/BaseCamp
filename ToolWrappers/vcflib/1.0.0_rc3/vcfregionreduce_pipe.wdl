version 1.0

task VcfregionreducePipe {
  command <<<
    vcfregionreduce_pipe
  >>>
  output {
    File out_stdout = stdout()
  }
}