version 1.0

task AnnExonsNcbipl {
  command <<<
    ann_exons_ncbi_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}