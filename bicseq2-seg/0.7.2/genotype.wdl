version 1.0

task Genotype {
  command <<<
    genotype
  >>>
  output {
    File out_stdout = stdout()
  }
}