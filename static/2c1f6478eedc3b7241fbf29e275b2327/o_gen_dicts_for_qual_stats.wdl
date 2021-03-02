version 1.0

task Ogendictsforqualstats {
  command <<<
    o_gen_dicts_for_qual_stats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}