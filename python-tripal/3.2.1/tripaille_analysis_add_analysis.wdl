version 1.0

task TripailleAnalysisAddAnalysis {
  input {
    String algorithmAlgorithm
    String sourceSourceVersion
    String sourceSourceUri
    String descriptionDescription
    String dateDateExecuted
  }
  command <<<
    tripaille analysis add_analysis \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(sourceSourceVersion) then ("--sourceversion " +  '"' + sourceSourceVersion + '"') else ""} \
      ~{if defined(sourceSourceUri) then ("--sourceuri " +  '"' + sourceSourceUri + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(dateDateExecuted) then ("--date_executed " +  '"' + dateDateExecuted + '"') else ""}
  >>>
}