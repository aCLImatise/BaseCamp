version 1.0

task GenomicIntervalpy {
  command <<<
    genomic_interval_py
  >>>
  output {
    File out_stdout = stdout()
  }
}