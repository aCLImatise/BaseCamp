version 1.0

task MakeSuperLocuspl {
  command <<<
    make_super_locus_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}