version 1.0

task Filterbam {
  command <<<
    filter_bam
  >>>
  output {
    File out_stdout = stdout()
  }
}