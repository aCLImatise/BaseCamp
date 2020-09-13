version 1.0

task Methylpy {
  command <<<
    methylpy
  >>>
  output {
    File out_stdout = stdout()
  }
}