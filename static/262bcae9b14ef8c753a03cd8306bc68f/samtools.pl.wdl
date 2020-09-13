version 1.0

task Samtoolspl {
  command <<<
    samtools_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}