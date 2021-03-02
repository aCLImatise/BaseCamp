version 1.0

task RunHisat2Buildsh {
  command <<<
    run_hisat2_build_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}