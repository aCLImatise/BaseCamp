version 1.0

task ExtractCountFreqGenespy {
  command <<<
    ExtractCountFreqGenes_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}