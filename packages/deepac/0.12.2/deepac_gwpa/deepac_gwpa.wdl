version 1.0

task DeepacGwpa {
  command <<<
    deepac gwpa
  >>>
  output {
    File out_stdout = stdout()
  }
}