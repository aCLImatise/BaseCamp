version 1.0

task PickBestPolish {
  command <<<
    pickBestPolish
  >>>
  output {
    File out_stdout = stdout()
  }
}