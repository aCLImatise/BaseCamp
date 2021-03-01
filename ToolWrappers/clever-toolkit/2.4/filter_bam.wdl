version 1.0

task Filterbam {
  command <<<
    filter_bam
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}