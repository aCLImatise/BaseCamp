version 1.0

task TagBam {
  command <<<
    tag_bam
  >>>
  output {
    File out_stdout = stdout()
  }
}