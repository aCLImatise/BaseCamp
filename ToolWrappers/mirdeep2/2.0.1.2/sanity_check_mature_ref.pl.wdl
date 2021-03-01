version 1.0

task SanityCheckMatureRefpl {
  command <<<
    sanity_check_mature_ref_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}