version 1.0

task ReverseFastqpy {
  command <<<
    reverse_fastq_py
  >>>
  output {
    File out_stdout = stdout()
  }
}