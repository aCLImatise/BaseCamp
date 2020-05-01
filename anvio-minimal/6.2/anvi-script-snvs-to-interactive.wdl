version 1.0

task AnviScriptSnvsToInteractive {
  input {
    Float minMinDepartureFromConsensus
    Float maxMaxDepartureFromConsensus
    Float minMinDepartureFromReference
    Float maxMaxDepartureFromReference
    Boolean displayDisplayDepFromReference
    Boolean onlyOnlyInGenes
    Int randomRandom
    Boolean justJustDoIt
    String outputOutputDir
    String? variabilityVariabilityProfile
  }
  command <<<
    anvi-script-snvs-to-interactive \
      ~{variabilityVariabilityProfile} \
      ~{if defined(minMinDepartureFromConsensus) then ("--min-departure-from-consensus " +  '"' + minMinDepartureFromConsensus + '"') else ""} \
      ~{if defined(maxMaxDepartureFromConsensus) then ("--max-departure-from-consensus " +  '"' + maxMaxDepartureFromConsensus + '"') else ""} \
      ~{if defined(minMinDepartureFromReference) then ("--min-departure-from-reference " +  '"' + minMinDepartureFromReference + '"') else ""} \
      ~{if defined(maxMaxDepartureFromReference) then ("--max-departure-from-reference " +  '"' + maxMaxDepartureFromReference + '"') else ""} \
      ~{true="--display-dep-from-reference" false="" displayDisplayDepFromReference} \
      ~{true="--only-in-genes" false="" onlyOnlyInGenes} \
      ~{if defined(randomRandom) then ("--random " +  '"' + randomRandom + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}