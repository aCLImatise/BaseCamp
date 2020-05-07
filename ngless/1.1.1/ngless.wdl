version 1.0

task Ngless {
  input {
    Boolean versionVersionShort
    Boolean versionVersionDebug
    Boolean dateDateShort
    String scriptScript
    Boolean validateValidateOnly
    Boolean printPrintLast
    Boolean traceTrace
    Boolean noNoTrace
    String threadsThreads
    Boolean strictStrictThreads
    Boolean noNoStrictThreads
    Boolean createCreateReport
    Boolean noNoCreateReport
    String htmlHtmlReportDirectory
    String temporaryTemporaryDirectory
    Boolean keepKeepTemporaryFiles
    Boolean noNoKeepTemporaryFiles
    String configConfigFile
    Boolean noNoHeader
    Boolean subsampleSubsample
    Boolean experimentalExperimentalFeatures
    String exportExportJson
    String exportExportCwl
    Boolean checkCheckDeprecation
    String searchSearchDir
    String searchSearchPath
    String indexIndexPath
    Boolean checkCheckInstall
    Boolean verboseVerbose
    String colorColor
    String? inputInput
    String? refRef
  }
  command <<<
    ngless \
      ~{inputInput} \
      ~{true="--version-short" false="" versionVersionShort} \
      ~{true="--version-debug" false="" versionVersionDebug} \
      ~{true="--date-short" false="" dateDateShort} \
      ~{if defined(scriptScript) then ("--script " +  '"' + scriptScript + '"') else ""} \
      ~{true="--validate-only" false="" validateValidateOnly} \
      ~{true="--print-last" false="" printPrintLast} \
      ~{true="--trace" false="" traceTrace} \
      ~{true="--no-trace" false="" noNoTrace} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--strict-threads" false="" strictStrictThreads} \
      ~{true="--no-strict-threads" false="" noNoStrictThreads} \
      ~{true="--create-report" false="" createCreateReport} \
      ~{true="--no-create-report" false="" noNoCreateReport} \
      ~{if defined(htmlHtmlReportDirectory) then ("--html-report-directory " +  '"' + htmlHtmlReportDirectory + '"') else ""} \
      ~{if defined(temporaryTemporaryDirectory) then ("--temporary-directory " +  '"' + temporaryTemporaryDirectory + '"') else ""} \
      ~{true="--keep-temporary-files" false="" keepKeepTemporaryFiles} \
      ~{true="--no-keep-temporary-files" false="" noNoKeepTemporaryFiles} \
      ~{if defined(configConfigFile) then ("--config-file " +  '"' + configConfigFile + '"') else ""} \
      ~{true="--no-header" false="" noNoHeader} \
      ~{true="--subsample" false="" subsampleSubsample} \
      ~{true="--experimental-features" false="" experimentalExperimentalFeatures} \
      ~{if defined(exportExportJson) then ("--export-json " +  '"' + exportExportJson + '"') else ""} \
      ~{if defined(exportExportCwl) then ("--export-cwl " +  '"' + exportExportCwl + '"') else ""} \
      ~{true="--check-deprecation" false="" checkCheckDeprecation} \
      ~{if defined(searchSearchDir) then ("--search-dir " +  '"' + searchSearchDir + '"') else ""} \
      ~{if defined(searchSearchPath) then ("--search-path " +  '"' + searchSearchPath + '"') else ""} \
      ~{if defined(indexIndexPath) then ("--index-path " +  '"' + indexIndexPath + '"') else ""} \
      ~{true="--check-install" false="" checkCheckInstall} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(colorColor) then ("--color " +  '"' + colorColor + '"') else ""} \
      ~{refRef}
  >>>
}