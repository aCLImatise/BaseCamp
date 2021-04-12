version 1.0

task ASCIIGenomejar {
  command <<<
    ASCIIGenome_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}