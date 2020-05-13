version 1.0

task RefgenieBuild {
  input {
    String genomeGenomeConfig
    Boolean recoverRecover
    String configConfig
    Boolean newNewStart
    String tagTagDescription
    String genomeGenomeDescription
    Boolean dockerDocker
    Array[String]+ assetsAssets
    Array[File]+ filesFiles
    Array[String]+ paramsParams
    Array[String]+ volumesVolumes
    String outOutFolder
    Boolean requirementsRequirements
    String recipeRecipe
    String genomeGenome
    String? assetAssetRegistryPaths
  }
  command <<<
    refgenie build \
      ~{assetAssetRegistryPaths} \
      ~{if defined(genomeGenomeConfig) then ("--genome-config " +  '"' + genomeGenomeConfig + '"') else ""} \
      ~{true="--recover" false="" recoverRecover} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--new-start" false="" newNewStart} \
      ~{if defined(tagTagDescription) then ("--tag-description " +  '"' + tagTagDescription + '"') else ""} \
      ~{if defined(genomeGenomeDescription) then ("--genome-description " +  '"' + genomeGenomeDescription + '"') else ""} \
      ~{true="--docker" false="" dockerDocker} \
      ~{if defined(assetsAssets) then ("--assets " +  '"' + assetsAssets + '"') else ""} \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""} \
      ~{if defined(paramsParams) then ("--params " +  '"' + paramsParams + '"') else ""} \
      ~{if defined(volumesVolumes) then ("--volumes " +  '"' + volumesVolumes + '"') else ""} \
      ~{if defined(outOutFolder) then ("--outfolder " +  '"' + outOutFolder + '"') else ""} \
      ~{true="--requirements" false="" requirementsRequirements} \
      ~{if defined(recipeRecipe) then ("--recipe " +  '"' + recipeRecipe + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""}
  >>>
}