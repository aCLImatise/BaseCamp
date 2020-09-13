version 1.0

task Datmapy {
  command <<<
    datma_py
  >>>
  output {
    File out_stdout = stdout()
  }
}