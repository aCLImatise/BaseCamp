version 1.0

task PslPosTarget {
  command <<<
    pslPosTarget
  >>>
  output {
    File out_stdout = stdout()
  }
}