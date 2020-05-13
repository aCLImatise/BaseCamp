version 1.0

task RefgenieListr {
  input {
    String genomeGenomeConfig
    Boolean gG
  }
  command <<<
    refgenie listr \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}