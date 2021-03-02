version 1.0

task DownTRNApl {
  command <<<
    down_tRNA_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}