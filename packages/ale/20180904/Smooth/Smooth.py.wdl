version 1.0

task Smoothpy {
  command <<<
    Smooth_py
  >>>
  output {
    File out_stdout = stdout()
  }
}