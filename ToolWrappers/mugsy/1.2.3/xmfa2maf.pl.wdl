version 1.0

task Xmfa2mafpl {
  command <<<
    xmfa2maf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}