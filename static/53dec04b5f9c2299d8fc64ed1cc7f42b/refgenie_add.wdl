version 1.0

task RefgenieAdd {
  input {
    String genomeGenomeConfig
    String genomeGenome
    File pathPath
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenie add \
      ~{assetAssetRegistryPaths} \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""}
  >>>
}