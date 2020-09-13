version 1.0

task Bubbledetectorpy {
  command <<<
    bubbledetector_py
  >>>
  output {
    File out_stdout = stdout()
  }
}