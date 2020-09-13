version 1.0

task SeedRandpy {
  command <<<
    seedRand_py
  >>>
  output {
    File out_stdout = stdout()
  }
}