version 1.0

task Zff2gff3pl {
  command <<<
    zff2gff3_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}