version 1.0

task AnnIprWwwpl {
  command <<<
    ann_ipr_www_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}