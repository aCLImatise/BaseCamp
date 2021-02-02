version 1.0

task Scanpyscriptstestsbats {
  command <<<
    scanpy_scripts_tests_bats
  >>>
  output {
    File out_stdout = stdout()
  }
}