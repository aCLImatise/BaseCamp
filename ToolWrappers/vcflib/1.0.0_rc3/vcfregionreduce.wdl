version 1.0

task Vcfregionreduce {
  command <<<
    vcfregionreduce
  >>>
  output {
    File out_stdout = stdout()
  }
}