version 1.0

task Diversitypy {
  command <<<
    diversity_py
  >>>
  output {
    File out_stdout = stdout()
  }
}