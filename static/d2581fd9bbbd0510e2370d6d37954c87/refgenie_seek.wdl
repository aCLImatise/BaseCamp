version 1.0

task RefgenieSeek {
  input {
    String genomeGenomeConfig
    String genomeGenome
    Boolean checkCheckExists
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenie seek \
      ~{assetAssetRegistryPaths} \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--check-exists" false="" checkCheckExists}
  >>>
}