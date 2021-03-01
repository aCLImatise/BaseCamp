version 1.0

task GenomicIntervalpy {
  command <<<
    genomic_interval_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}