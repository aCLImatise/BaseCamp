version 1.0

task DeepModpy {
  command <<<
    DeepMod_py
  >>>
  output {
    File out_stdout = stdout()
  }
}