version 1.0

task SanityCheckMatureRefplorig {
  command <<<
    sanity_check_mature_ref_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}