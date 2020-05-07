version 1.0

task RefgenieList {
  input {
    String genomeGenomeConfig
    Boolean gG
  }
  command <<<
    refgenie list \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}