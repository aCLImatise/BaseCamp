version 1.0

task PCoApy {
  command <<<
    PCoA_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}