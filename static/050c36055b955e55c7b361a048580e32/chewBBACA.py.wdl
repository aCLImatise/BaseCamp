version 1.0

task ChewBBACApy {
  command <<<
    chewBBACA_py
  >>>
  output {
    File out_stdout = stdout()
  }
}