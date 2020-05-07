version 1.0

task DrDiscoClassify {
  input {
    Boolean onlyOnlyValid
    String blacklistBlacklistRegions
    String blacklistBlacklistJunctions
    Int minMinChimOverhang
    Boolean ffFfPe
    String? optionsOptions
    String? tableTableInputFile
    String? tableTableOutputFile
  }
  command <<<
    dr-disco classify \
      ~{optionsOptions} \
      ~{true="--only-valid" false="" onlyOnlyValid} \
      ~{if defined(blacklistBlacklistRegions) then ("--blacklist-regions " +  '"' + blacklistBlacklistRegions + '"') else ""} \
      ~{if defined(blacklistBlacklistJunctions) then ("--blacklist-junctions " +  '"' + blacklistBlacklistJunctions + '"') else ""} \
      ~{if defined(minMinChimOverhang) then ("--min-chim-overhang " +  '"' + minMinChimOverhang + '"') else ""} \
      ~{true="--ffpe" false="" ffFfPe} \
      ~{tableTableInputFile} \
      ~{tableTableOutputFile}
  >>>
}