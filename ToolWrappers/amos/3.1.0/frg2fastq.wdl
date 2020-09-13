version 1.0

task Frg2fastq {
  command <<<
    frg2fastq
  >>>
  output {
    File out_stdout = stdout()
  }
}