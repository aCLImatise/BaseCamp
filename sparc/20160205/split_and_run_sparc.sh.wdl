version 1.0

task SplitAndRunSparcsh {
  command <<<
    split_and_run_sparc_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}