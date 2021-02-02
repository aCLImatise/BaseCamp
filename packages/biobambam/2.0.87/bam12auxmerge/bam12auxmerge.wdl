version 1.0

task Bam12auxmerge {
  command <<<
    bam12auxmerge
  >>>
  output {
    File out_stdout = stdout()
  }
}