version 1.0

task RefgenieUnsubscribe {
  input {
    String genomeGenomeConfig
    Array[String]+ genomeGenomeServer
  }
  command <<<
    refgenie unsubscribe \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenomeServer) then ("--genome-server " +  '"' + genomeGenomeServer + '"') else ""}
  >>>
}