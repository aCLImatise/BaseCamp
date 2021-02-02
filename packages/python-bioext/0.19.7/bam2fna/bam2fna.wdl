version 1.0

task Bam2fna {
  command <<<
    bam2fna
  >>>
  output {
    File out_stdout = stdout()
  }
}