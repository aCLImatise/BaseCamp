version 1.0

task FindChimeras {
  command <<<
    findChimeras
  >>>
  output {
    File out_stdout = stdout()
  }
}