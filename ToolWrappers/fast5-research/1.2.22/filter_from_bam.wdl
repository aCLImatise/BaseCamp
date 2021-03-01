version 1.0

task FilterFromBam {
  command <<<
    filter_from_bam
  >>>
  runtime {
    docker: "quay.io/biocontainers/fast5-research:1.2.22--pyh864c0ab_0"
  }
  output {
    File out_stdout = stdout()
  }
}