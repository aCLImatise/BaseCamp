version 1.0

task ASCIIGenomejar {
  command <<<
    ASCIIGenome_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}