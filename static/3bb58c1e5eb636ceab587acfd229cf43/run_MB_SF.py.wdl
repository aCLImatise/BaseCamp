version 1.0

task RunMBSFpy {
  command <<<
    run_MB_SF_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}