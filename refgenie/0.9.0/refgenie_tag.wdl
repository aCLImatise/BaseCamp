version 1.0

task RefgenieTag {
  input {
    String genomeGenomeConfig
    String genomeGenome
    String tagTag
    Boolean defaultDefault
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenie tag \
      ~{assetAssetRegistryPaths} \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{true="--default" false="" defaultDefault}
  >>>
}