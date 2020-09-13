version 1.0

task Monotestinstall {
  command <<<
    mono_test_install
  >>>
  output {
    File out_stdout = stdout()
  }
}