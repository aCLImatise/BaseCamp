version 1.0

task Cortexpy {
  command <<<
    cortexpy
  >>>
  output {
    File out_stdout = stdout()
  }
}