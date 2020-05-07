version 1.0

task CpinsimAnnotate {
  input {
    Array[File]+ interactionsInteractionsWithoutConstraints
    Array[File]+ competitionsCompetitions
    Array[File]+ allostericAllostericEffects
    Boolean extendedExtendedInference
    File outputOutputInteractions
    File outputOutputCompetitions
    File outputOutputAllostericS
  }
  command <<<
    cpinsim annotate \
      ~{if defined(interactionsInteractionsWithoutConstraints) then ("--interactions_without_constraints " +  '"' + interactionsInteractionsWithoutConstraints + '"') else ""} \
      ~{if defined(competitionsCompetitions) then ("--competitions " +  '"' + competitionsCompetitions + '"') else ""} \
      ~{if defined(allostericAllostericEffects) then ("--allosteric_effects " +  '"' + allostericAllostericEffects + '"') else ""} \
      ~{true="--extended_inference" false="" extendedExtendedInference} \
      ~{if defined(outputOutputInteractions) then ("--output_interactions " +  '"' + outputOutputInteractions + '"') else ""} \
      ~{if defined(outputOutputCompetitions) then ("--output_competitions " +  '"' + outputOutputCompetitions + '"') else ""} \
      ~{if defined(outputOutputAllostericS) then ("--output_allosterics " +  '"' + outputOutputAllostericS + '"') else ""}
  >>>
}