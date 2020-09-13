version 1.0

task Cegma2gffpl {
  command <<<
    cegma2gff_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}