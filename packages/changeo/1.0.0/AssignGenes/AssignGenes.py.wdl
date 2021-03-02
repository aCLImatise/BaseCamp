version 1.0

task AssignGenespy {
  command <<<
    AssignGenes_py
  >>>
  output {
    File out_stdout = stdout()
  }
}