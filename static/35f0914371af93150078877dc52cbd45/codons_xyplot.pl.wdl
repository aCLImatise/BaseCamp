version 1.0

task Codonsxyplotpl {
  command <<<
    codons_xyplot_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}