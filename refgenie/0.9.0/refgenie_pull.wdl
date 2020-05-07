version 1.0

task RefgeniePull {
  input {
    String genomeGenomeConfig
    String genomeGenome
    Boolean noNoUntar
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenie pull \
      ~{assetAssetRegistryPaths} \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--no-untar" false="" noNoUntar}
  >>>
}