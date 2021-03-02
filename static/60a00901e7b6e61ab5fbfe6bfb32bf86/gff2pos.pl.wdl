version 1.0

task Gff2pospl {
  command <<<
    gff2pos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}