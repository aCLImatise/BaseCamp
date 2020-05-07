version 1.0

task Nosetests3.6 {
  input {
    Boolean noNoByteCompile
    String attrAttr
    String evalEvalAttr
    Boolean noNoCapture
    Boolean noNoLogCapture
    String loggingLoggingFormat
    String loggingLoggingDateFmt
    String loggingLoggingFilter
    Boolean loggingLoggingClearHandlers
    String loggingLoggingLevel
    Boolean withWithCoverage
    String coverCoverPackage
    Boolean coverCoverErase
    Boolean coverCoverTests
    String coverCoverMinPercentage
    Boolean coverCoverInclusive
    Boolean coverCoverHtml
    String coverCoverHtmlDir
    Boolean coverCoverBranches
    Boolean coverCoverXml
    File coverCoverXmlFile
    Boolean pdbPdb
    Boolean pdbPdbFailures
    Boolean pdbPdbErrors
    Boolean noNoDeprecated
    Boolean withWithDoctest
    Boolean doctestDoctestTests
    String doctestDoctestExtension
    String doctestDoctestResultVariable
    String doctestDoctestFixtures
    String doctestDoctestOptions
    Boolean withWithIsolation
    Boolean detailedDetailedErrors
    Boolean noNoSkip
    Boolean withWithId
    File idIdFile
    Boolean failedFailed
    String processesProcesses
    String processProcessTimeout
    Boolean processProcessRestartWorker
    Boolean withWithXUnit
    File xXUnitFile
    String xXUnitTestsuiteName
    Boolean allAllModules
    Boolean collectCollectOnly
  }
  command <<<
    nosetests-3.6 \
      ~{true="--no-byte-compile" false="" noNoByteCompile} \
      ~{if defined(attrAttr) then ("--attr " +  '"' + attrAttr + '"') else ""} \
      ~{if defined(evalEvalAttr) then ("--eval-attr " +  '"' + evalEvalAttr + '"') else ""} \
      ~{true="--nocapture" false="" noNoCapture} \
      ~{true="--nologcapture" false="" noNoLogCapture} \
      ~{if defined(loggingLoggingFormat) then ("--logging-format " +  '"' + loggingLoggingFormat + '"') else ""} \
      ~{if defined(loggingLoggingDateFmt) then ("--logging-datefmt " +  '"' + loggingLoggingDateFmt + '"') else ""} \
      ~{if defined(loggingLoggingFilter) then ("--logging-filter " +  '"' + loggingLoggingFilter + '"') else ""} \
      ~{true="--logging-clear-handlers" false="" loggingLoggingClearHandlers} \
      ~{if defined(loggingLoggingLevel) then ("--logging-level " +  '"' + loggingLoggingLevel + '"') else ""} \
      ~{true="--with-coverage" false="" withWithCoverage} \
      ~{if defined(coverCoverPackage) then ("--cover-package " +  '"' + coverCoverPackage + '"') else ""} \
      ~{true="--cover-erase" false="" coverCoverErase} \
      ~{true="--cover-tests" false="" coverCoverTests} \
      ~{if defined(coverCoverMinPercentage) then ("--cover-min-percentage " +  '"' + coverCoverMinPercentage + '"') else ""} \
      ~{true="--cover-inclusive" false="" coverCoverInclusive} \
      ~{true="--cover-html" false="" coverCoverHtml} \
      ~{if defined(coverCoverHtmlDir) then ("--cover-html-dir " +  '"' + coverCoverHtmlDir + '"') else ""} \
      ~{true="--cover-branches" false="" coverCoverBranches} \
      ~{true="--cover-xml" false="" coverCoverXml} \
      ~{if defined(coverCoverXmlFile) then ("--cover-xml-file " +  '"' + coverCoverXmlFile + '"') else ""} \
      ~{true="--pdb" false="" pdbPdb} \
      ~{true="--pdb-failures" false="" pdbPdbFailures} \
      ~{true="--pdb-errors" false="" pdbPdbErrors} \
      ~{true="--no-deprecated" false="" noNoDeprecated} \
      ~{true="--with-doctest" false="" withWithDoctest} \
      ~{true="--doctest-tests" false="" doctestDoctestTests} \
      ~{if defined(doctestDoctestExtension) then ("--doctest-extension " +  '"' + doctestDoctestExtension + '"') else ""} \
      ~{if defined(doctestDoctestResultVariable) then ("--doctest-result-variable " +  '"' + doctestDoctestResultVariable + '"') else ""} \
      ~{if defined(doctestDoctestFixtures) then ("--doctest-fixtures " +  '"' + doctestDoctestFixtures + '"') else ""} \
      ~{if defined(doctestDoctestOptions) then ("--doctest-options " +  '"' + doctestDoctestOptions + '"') else ""} \
      ~{true="--with-isolation" false="" withWithIsolation} \
      ~{true="--detailed-errors" false="" detailedDetailedErrors} \
      ~{true="--no-skip" false="" noNoSkip} \
      ~{true="--with-id" false="" withWithId} \
      ~{if defined(idIdFile) then ("--id-file " +  '"' + idIdFile + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(processProcessTimeout) then ("--process-timeout " +  '"' + processProcessTimeout + '"') else ""} \
      ~{true="--process-restartworker" false="" processProcessRestartWorker} \
      ~{true="--with-xunit" false="" withWithXUnit} \
      ~{if defined(xXUnitFile) then ("--xunit-file " +  '"' + xXUnitFile + '"') else ""} \
      ~{if defined(xXUnitTestsuiteName) then ("--xunit-testsuite-name " +  '"' + xXUnitTestsuiteName + '"') else ""} \
      ~{true="--all-modules" false="" allAllModules} \
      ~{true="--collect-only" false="" collectCollectOnly}
  >>>
}