version 1.0

task Libstatsplbak {
  command <<<
    libstats_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}