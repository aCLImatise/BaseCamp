version 1.0

task TripailleAnalysisGetAnalyses {
  input {
    String analysisAnalysisId
    String nameName
    String programProgram
    String programProgramVersion
    String algorithmAlgorithm
    String sourceSourceName
    String sourceSourceVersion
    String sourceSourceUri
    String dateDateExecuted
  }
  command <<<
    tripaille analysis get_analyses \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(programProgram) then ("--program " +  '"' + programProgram + '"') else ""} \
      ~{if defined(programProgramVersion) then ("--programversion " +  '"' + programProgramVersion + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(sourceSourceName) then ("--sourcename " +  '"' + sourceSourceName + '"') else ""} \
      ~{if defined(sourceSourceVersion) then ("--sourceversion " +  '"' + sourceSourceVersion + '"') else ""} \
      ~{if defined(sourceSourceUri) then ("--sourceuri " +  '"' + sourceSourceUri + '"') else ""} \
      ~{if defined(dateDateExecuted) then ("--date_executed " +  '"' + dateDateExecuted + '"') else ""}
  >>>
}