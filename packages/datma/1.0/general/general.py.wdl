version 1.0

task Generalpy {
  command <<<
    general_py
  >>>
  output {
    File out_stdout = stdout()
  }
}