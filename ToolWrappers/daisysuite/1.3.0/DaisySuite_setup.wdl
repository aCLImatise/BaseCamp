version 1.0

task DaisySuiteSetup {
  command <<<
    DaisySuite_setup
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}