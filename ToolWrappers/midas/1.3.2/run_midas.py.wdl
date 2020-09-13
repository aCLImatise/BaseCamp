version 1.0

task RunMidaspy {
  command <<<
    run_midas_py
  >>>
  output {
    File out_stdout = stdout()
  }
}