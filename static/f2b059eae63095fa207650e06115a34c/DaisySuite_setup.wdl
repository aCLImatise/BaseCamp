version 1.0

task DaisySuiteSetup {
  command <<<
    DaisySuite_setup
  >>>
  output {
    File out_stdout = stdout()
  }
}