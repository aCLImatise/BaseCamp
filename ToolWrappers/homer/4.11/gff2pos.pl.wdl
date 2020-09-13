version 1.0

task Gff2pospl {
  command <<<
    gff2pos_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}