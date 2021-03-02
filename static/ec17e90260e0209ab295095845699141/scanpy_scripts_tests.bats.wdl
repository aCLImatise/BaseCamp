version 1.0

task Scanpyscriptstestsbats {
  command <<<
    scanpy_scripts_tests_bats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}