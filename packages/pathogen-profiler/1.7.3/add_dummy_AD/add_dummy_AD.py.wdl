version 1.0

task AddDummyADpy {
  command <<<
    add_dummy_AD_py
  >>>
  output {
    File out_stdout = stdout()
  }
}