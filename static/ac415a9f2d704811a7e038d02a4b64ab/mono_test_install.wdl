version 1.0

task Monotestinstall {
  command <<<
    mono_test_install
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}