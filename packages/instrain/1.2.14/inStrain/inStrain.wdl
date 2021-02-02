version 1.0

task InStrain {
  command <<<
    inStrain
  >>>
  output {
    File out_stdout = stdout()
  }
}