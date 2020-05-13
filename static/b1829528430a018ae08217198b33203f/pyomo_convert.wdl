version 1.0

task PyomoConvert {
  input {
    String generateGenerateConfigTemplate
    File outputOutput
    String formatFormat
    String namespaceNamespace
    String modelModelName
    Boolean symbolicSymbolicSolverLabels
    File fileFileDeterminism
    String transformTransform
    String preprocessPreprocess
    String loggingLogging
    String logLogFile
    Boolean catchCatchErrors
    Boolean disableDisableGc
    Boolean keepKeepFiles
    File pathPath
    String profileProfileCount
    Boolean reportReportTiming
    String tempdirTempdir
    String applyApply
    String createCreate
    String applyApply
    String? modelModelOrConfigFile
    String? dataDataFiles
  }
  command <<<
    pyomo convert \
      ~{modelModelOrConfigFile} \
      ~{if defined(generateGenerateConfigTemplate) then ("--generate-config-template " +  '"' + generateGenerateConfigTemplate + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(namespaceNamespace) then ("--namespace " +  '"' + namespaceNamespace + '"') else ""} \
      ~{if defined(modelModelName) then ("--model-name " +  '"' + modelModelName + '"') else ""} \
      ~{true="--symbolic-solver-labels" false="" symbolicSymbolicSolverLabels} \
      ~{if defined(fileFileDeterminism) then ("--file-determinism " +  '"' + fileFileDeterminism + '"') else ""} \
      ~{if defined(transformTransform) then ("--transform " +  '"' + transformTransform + '"') else ""} \
      ~{if defined(preprocessPreprocess) then ("--preprocess " +  '"' + preprocessPreprocess + '"') else ""} \
      ~{if defined(loggingLogging) then ("--logging " +  '"' + loggingLogging + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--catch-errors" false="" catchCatchErrors} \
      ~{true="--disable-gc" false="" disableDisableGc} \
      ~{true="--keepfiles" false="" keepKeepFiles} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(profileProfileCount) then ("--profile-count " +  '"' + profileProfileCount + '"') else ""} \
      ~{true="--report-timing" false="" reportReportTiming} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{if defined(applyApply) then ("- Apply " +  '"' + applyApply + '"') else ""} \
      ~{if defined(createCreate) then ("- Create " +  '"' + createCreate + '"') else ""} \
      ~{if defined(applyApply) then ("- Apply " +  '"' + applyApply + '"') else ""} \
      ~{dataDataFiles}
  >>>
}