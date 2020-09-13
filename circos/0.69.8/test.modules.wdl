version 1.0

task Testmodules {
  command <<<
    test_modules
  >>>
  output {
    File out_stdout = stdout()
  }
}