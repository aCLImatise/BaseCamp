version 1.0

task AnnExonsUpWwwpl {
  command <<<
    ann_exons_up_www_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}