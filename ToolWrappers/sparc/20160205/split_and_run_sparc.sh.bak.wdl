version 1.0

task SplitAndRunSparcshbak {
  command <<<
    split_and_run_sparc_sh_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}