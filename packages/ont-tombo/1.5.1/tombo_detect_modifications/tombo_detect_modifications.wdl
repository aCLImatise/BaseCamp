version 1.0

task TomboDetectModifications {
  command <<<
    tombo detect_modifications
  >>>
  output {
    File out_stdout = stdout()
  }
}