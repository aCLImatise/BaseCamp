version 1.0

task ClstrRepsFaaRevpl {
  command <<<
    clstr_reps_faa_rev_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}