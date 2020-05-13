version 1.0

task RefgenieserverArchive {
  input {
    String configConfig
    Boolean dbgDbg
    String genomesGenomesDesc
    Boolean forceForce
    Boolean removeRemove
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenieserver archive \
      ~{assetAssetRegistryPaths} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--dbg" false="" dbgDbg} \
      ~{if defined(genomesGenomesDesc) then ("--genomes-desc " +  '"' + genomesGenomesDesc + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--remove" false="" removeRemove}
  >>>
}