version 1.0

task Fastqpy {
  command <<<
    fastq_py
  >>>
  output {
    File out_stdout = stdout()
  }
}