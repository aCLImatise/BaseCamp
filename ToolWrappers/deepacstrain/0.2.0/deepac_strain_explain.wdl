version 1.0

task DeepacstrainExplain {
  command <<<
    deepac_strain explain
  >>>
  output {
    File out_stdout = stdout()
  }
}