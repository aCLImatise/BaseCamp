version 1.0

task Meneco.py {
  input {
    String draftDraftNet
    String seedsSeeds
    String targetsTargets
    String repairRepairNet
    Boolean enumerateEnumerate
  }
  command <<<
    meneco.py \
      ~{if defined(draftDraftNet) then ("--draftnet " +  '"' + draftDraftNet + '"') else ""} \
      ~{if defined(seedsSeeds) then ("--seeds " +  '"' + seedsSeeds + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(repairRepairNet) then ("--repairnet " +  '"' + repairRepairNet + '"') else ""} \
      ~{true="--enumerate" false="" enumerateEnumerate}
  >>>
}