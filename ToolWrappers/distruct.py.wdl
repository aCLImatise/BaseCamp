version 1.0

task Distructpy {
  command <<<
    distruct_py
  >>>
  output {
    File out_stdout = stdout()
  }
}