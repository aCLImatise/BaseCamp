version 1.0

task IndelstatSamBam {
  command <<<
    indelstat_sam_bam
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}