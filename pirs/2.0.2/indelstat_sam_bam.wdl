version 1.0

task IndelstatSamBam {
  command <<<
    indelstat_sam_bam
  >>>
  output {
    File out_stdout = stdout()
  }
}