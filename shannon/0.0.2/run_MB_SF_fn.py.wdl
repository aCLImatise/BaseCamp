version 1.0

task RunMBSFFnpy {
  command <<<
    run_MB_SF_fn_py
  >>>
  output {
    File out_stdout = stdout()
  }
}