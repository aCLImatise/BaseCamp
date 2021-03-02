version 1.0

task VcfregionreduceUncompressed {
  command <<<
    vcfregionreduce_uncompressed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}