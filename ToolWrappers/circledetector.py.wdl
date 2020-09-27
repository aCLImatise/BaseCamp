version 1.0

task Circledetectorpy {
  command <<<
    circledetector_py
  >>>
  output {
    File out_stdout = stdout()
  }
}