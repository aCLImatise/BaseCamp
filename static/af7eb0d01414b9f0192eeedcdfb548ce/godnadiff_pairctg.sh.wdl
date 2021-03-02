version 1.0

task GodnadiffPairctgsh {
  command <<<
    godnadiff_pairctg_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}