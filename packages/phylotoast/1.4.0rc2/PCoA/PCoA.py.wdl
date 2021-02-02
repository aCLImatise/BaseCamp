version 1.0

task PCoApy {
  command <<<
    PCoA_py
  >>>
  output {
    File out_stdout = stdout()
  }
}