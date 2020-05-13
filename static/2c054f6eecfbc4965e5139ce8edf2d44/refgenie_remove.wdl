version 1.0

task RefgenieRemove {
  input {
    String genomeGenomeConfig
    String genomeGenome
    Boolean forceForce
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenie remove \
      ~{assetAssetRegistryPaths} \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}