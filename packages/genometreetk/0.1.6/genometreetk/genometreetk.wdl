version 1.0

task Genometreetk {
  command <<<
    genometreetk
  >>>
  output {
    File out_stdout = stdout()
  }
}