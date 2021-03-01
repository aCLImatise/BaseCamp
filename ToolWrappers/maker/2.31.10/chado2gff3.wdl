version 1.0

task Chado2gff3 {
  command <<<
    chado2gff3
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}