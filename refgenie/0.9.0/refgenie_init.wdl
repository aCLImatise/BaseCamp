version 1.0

task RefgenieInit {
  input {
    String genomeGenomeConfig
    Array[String]+ genomeGenomeServer
  }
  command <<<
    refgenie init \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenomeServer) then ("--genome-server " +  '"' + genomeGenomeServer + '"') else ""}
  >>>
}