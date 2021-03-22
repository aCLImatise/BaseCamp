version 1.0

task SanityCheckMatureRefplorig {
  command <<<
    sanity_check_mature_ref_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}