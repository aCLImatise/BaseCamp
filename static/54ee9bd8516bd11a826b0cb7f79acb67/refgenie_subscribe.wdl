version 1.0

task RefgenieSubscribe {
  input {
    String genomeGenomeConfig
    Boolean resetReset
    Array[String]+ genomeGenomeServer
  }
  command <<<
    refgenie subscribe \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{true="--reset" false="" resetReset} \
      ~{if defined(genomeGenomeServer) then ("--genome-server " +  '"' + genomeGenomeServer + '"') else ""}
  >>>
}