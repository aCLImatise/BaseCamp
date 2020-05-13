version 1.0

task CpinsimParse {
  input {
    Array[Int]+ interactionsInteractionsWithoutConstraints
    Array[String]+ competitionsCompetitions
    Array[String]+ allostericAllostericEffects
    String outputOutput
  }
  command <<<
    cpinsim parse \
      ~{if defined(interactionsInteractionsWithoutConstraints) then ("--interactions_without_constraints " +  '"' + interactionsInteractionsWithoutConstraints + '"') else ""} \
      ~{if defined(competitionsCompetitions) then ("--competitions " +  '"' + competitionsCompetitions + '"') else ""} \
      ~{if defined(allostericAllostericEffects) then ("--allosteric_effects " +  '"' + allostericAllostericEffects + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}