version 1.0

task Bubbleprocesserpy {
  command <<<
    bubbleprocesser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}