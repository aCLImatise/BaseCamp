version 1.0

task Testmodules {
  command <<<
    test_modules
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}