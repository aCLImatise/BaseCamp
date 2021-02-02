version 1.0

task Debubblepy {
  command <<<
    debubble_py
  >>>
  output {
    File out_stdout = stdout()
  }
}