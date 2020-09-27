version 1.0

task RunHisat2Buildsh {
  command <<<
    run_hisat2_build_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}