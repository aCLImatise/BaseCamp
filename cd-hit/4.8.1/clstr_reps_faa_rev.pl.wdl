version 1.0

task ClstrRepsFaaRevpl {
  command <<<
    clstr_reps_faa_rev_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}