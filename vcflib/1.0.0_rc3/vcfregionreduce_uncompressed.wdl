version 1.0

task VcfregionreduceUncompressed {
  command <<<
    vcfregionreduce_uncompressed
  >>>
  output {
    File out_stdout = stdout()
  }
}