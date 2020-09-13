version 1.0

task Fastqqscale {
  command <<<
    fastq_qscale
  >>>
  output {
    File out_stdout = stdout()
  }
}