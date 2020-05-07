version 1.0

task SlivarDuoDel {
  input {
    String pedPed
    String gGNotate
    Int minMinSites
    Int minMinSize
    String excludeExclude
    Boolean affectedAffectedOnly
    String pedPed
    String gGNotate
    Int minMinSites
    Int minMinSize
    String excludeExclude
    Boolean affectedAffectedOnly
    String? duoDuoDel
    String? vcfVcf
  }
  command <<<
    slivar duo-del \
      ~{duoDuoDel} \
      ~{if defined(pedPed) then ("--ped " +  '"' + pedPed + '"') else ""} \
      ~{if defined(gGNotate) then ("--gnotate " +  '"' + gGNotate + '"') else ""} \
      ~{if defined(minMinSites) then ("--min-sites " +  '"' + minMinSites + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--affected-only" false="" affectedAffectedOnly} \
      ~{if defined(pedPed) then ("--ped " +  '"' + pedPed + '"') else ""} \
      ~{if defined(gGNotate) then ("--gnotate " +  '"' + gGNotate + '"') else ""} \
      ~{if defined(minMinSites) then ("--min-sites " +  '"' + minMinSites + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--affected-only" false="" affectedAffectedOnly} \
      ~{vcfVcf}
  >>>
}