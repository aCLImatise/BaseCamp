version 1.0

task RefgenieId {
  input {
    String genomeGenomeConfig
    String genomeGenome
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenie id \
      ~{assetAssetRegistryPaths} \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""}
  >>>
}