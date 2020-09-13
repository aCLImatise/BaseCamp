version 1.0

task ExtractCountFreqGenespy {
  command <<<
    ExtractCountFreqGenes_py
  >>>
  output {
    File out_stdout = stdout()
  }
}