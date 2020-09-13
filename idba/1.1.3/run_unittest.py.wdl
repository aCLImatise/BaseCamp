version 1.0

task Rununittestpy {
  command <<<
    run_unittest_py
  >>>
  output {
    File out_stdout = stdout()
  }
}