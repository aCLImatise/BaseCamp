version 1.0

task Vcfregionreduce {
  command <<<
    vcfregionreduce
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}