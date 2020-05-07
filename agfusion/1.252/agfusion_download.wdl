version 1.0

task AgfusionDownload {
  input {
    String dirDir
    String genomeGenome
    String speciesSpecies
    String releaseRelease
    Boolean availableAvailable
  }
  command <<<
    agfusion download \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""} \
      ~{true="--available" false="" availableAvailable}
  >>>
}