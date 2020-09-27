version 1.0

task SanityCheckMatureRefpl {
  command <<<
    sanity_check_mature_ref_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}