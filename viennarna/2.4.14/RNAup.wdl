version 1.0

task RNAup {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean constraintConstraint
    Boolean noNoOutputFile
    Boolean noNoHeader
    Boolean noconvNoconv
    Int uULength
    String contributionsContributions
    Boolean interactionInteractionPairwise
    Boolean interactionInteractionFirst
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNAup \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--no_output_file" false="" noNoOutputFile} \
      ~{true="--no_header" false="" noNoHeader} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(uULength) then ("--ulength " +  '"' + uULength + '"') else ""} \
      ~{if defined(contributionsContributions) then ("--contributions " +  '"' + contributionsContributions + '"') else ""} \
      ~{true="--interaction_pairwise" false="" interactionInteractionPairwise} \
      ~{true="--interaction_first" false="" interactionInteractionFirst} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}