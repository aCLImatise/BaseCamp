version 1.0

task AlignSetspy {
  command <<<
    AlignSets_py
  >>>
  output {
    File out_stdout = stdout()
  }
}