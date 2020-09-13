version 1.0

task SelectGenepy {
  command <<<
    SelectGene_py
  >>>
  output {
    File out_stdout = stdout()
  }
}