version 1.0

task Chado2gff3 {
  command <<<
    chado2gff3
  >>>
  output {
    File out_stdout = stdout()
  }
}