version 1.0

task TripailleAnalysisLoadInterpro {
  input {
    String interproInterproParameters
    String queryQueryRe
    String queryQueryType
    Boolean queryQueryUniqueName
    Boolean parseParseGo
    Boolean noNoWait
    String algorithmAlgorithm
    String sourceSourceVersion
    String sourceSourceUri
    String descriptionDescription
    String dateDateExecuted
  }
  command <<<
    tripaille analysis load_interpro \
      ~{if defined(interproInterproParameters) then ("--interpro_parameters " +  '"' + interproInterproParameters + '"') else ""} \
      ~{if defined(queryQueryRe) then ("--query_re " +  '"' + queryQueryRe + '"') else ""} \
      ~{if defined(queryQueryType) then ("--query_type " +  '"' + queryQueryType + '"') else ""} \
      ~{true="--query_uniquename" false="" queryQueryUniqueName} \
      ~{true="--parse_go" false="" parseParseGo} \
      ~{true="--no_wait" false="" noNoWait} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(sourceSourceVersion) then ("--sourceversion " +  '"' + sourceSourceVersion + '"') else ""} \
      ~{if defined(sourceSourceUri) then ("--sourceuri " +  '"' + sourceSourceUri + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(dateDateExecuted) then ("--date_executed " +  '"' + dateDateExecuted + '"') else ""}
  >>>
}