version 1.0

task MakeSuperLocuspl {
  command <<<
    make_super_locus_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}