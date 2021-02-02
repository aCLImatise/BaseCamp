version 1.0

task Bam12strip {
  command <<<
    bam12strip
  >>>
  output {
    File out_stdout = stdout()
  }
}