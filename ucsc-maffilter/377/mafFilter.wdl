version 1.0

task MafFilter {
  input {
    String tolerateTolerate
    String filterFilter
    String filterFilter
    String filterFilter
    String filterFilter
    String minMinFactor
    String minMinScore
    File rejectReject
    String needNeedComp
    String overlapOverlap
    File componentComponentFilter
    File speciesSpeciesFilter
  }
  command <<<
    mafFilter \
      ~{if defined(tolerateTolerate) then ("-tolerate " +  '"' + tolerateTolerate + '"') else ""} \
      ~{if defined(filterFilter) then ("- Filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(filterFilter) then ("- Filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(filterFilter) then ("- Filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(filterFilter) then ("- Filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(minMinFactor) then ("-minFactor " +  '"' + minMinFactor + '"') else ""} \
      ~{if defined(minMinScore) then ("-minScore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(rejectReject) then ("-reject " +  '"' + rejectReject + '"') else ""} \
      ~{if defined(needNeedComp) then ("-needComp " +  '"' + needNeedComp + '"') else ""} \
      ~{if defined(overlapOverlap) then ("-overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(componentComponentFilter) then ("-componentFilter " +  '"' + componentComponentFilter + '"') else ""} \
      ~{if defined(speciesSpeciesFilter) then ("-speciesFilter " +  '"' + speciesSpeciesFilter + '"') else ""}
  >>>
}