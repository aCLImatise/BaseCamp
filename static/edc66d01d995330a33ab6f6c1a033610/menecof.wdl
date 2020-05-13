version 1.0

task Menecof {
  input {
    String draftDraftNet
    String seedsSeeds
    String targetsTargets
    String cofactorsCofactors
    String suffixSuffix
    Boolean weightWeight
    Boolean enumerateEnumerate
  }
  command <<<
    menecof \
      ~{if defined(draftDraftNet) then ("--draftnet " +  '"' + draftDraftNet + '"') else ""} \
      ~{if defined(seedsSeeds) then ("--seeds " +  '"' + seedsSeeds + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(cofactorsCofactors) then ("--cofactors " +  '"' + cofactorsCofactors + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--weight" false="" weightWeight} \
      ~{true="--enumerate" false="" enumerateEnumerate}
  >>>
}