version 1.0

task ASCIIGenomejar {
  command <<<
    ASCIIGenome_jar
  >>>
  runtime {
    docker: "quay.io/biocontainers/asciigenome:1.16.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}