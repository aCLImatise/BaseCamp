version 1.0

task Valetpy {
  command <<<
    valet_py
  >>>
  output {
    File out_stdout = stdout()
  }
}