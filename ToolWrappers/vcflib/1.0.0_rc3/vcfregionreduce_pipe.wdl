version 1.0

task VcfregionreducePipe {
  command <<<
    vcfregionreduce_pipe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}