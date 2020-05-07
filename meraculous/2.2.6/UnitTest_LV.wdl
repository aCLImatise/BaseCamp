version 1.0

task UnitTestLV {
  input {
    Boolean listListTests
    Boolean listListTags
    Boolean successSuccess
    Boolean breakBreak
    Boolean noNoThrow
    Boolean invisiblesInvisibles
    File outOut
    String reporterReporter
    String nameName
    Boolean abortAbort
    String abortAbortX
    String warnWarn
    Boolean durationsDurations
    File inputInputFile
    Boolean listListTestNamesOnly
    Boolean listListReporters
    Boolean orderOrder
    Boolean rngRngSeed
    Boolean forceForceColour
  }
  command <<<
    UnitTest_LV \
      ~{true="--list-tests" false="" listListTests} \
      ~{true="--list-tags" false="" listListTags} \
      ~{true="--success" false="" successSuccess} \
      ~{true="--break" false="" breakBreak} \
      ~{true="--nothrow" false="" noNoThrow} \
      ~{true="--invisibles" false="" invisiblesInvisibles} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(reporterReporter) then ("--reporter " +  '"' + reporterReporter + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--abort" false="" abortAbort} \
      ~{if defined(abortAbortX) then ("--abortx " +  '"' + abortAbortX + '"') else ""} \
      ~{if defined(warnWarn) then ("--warn " +  '"' + warnWarn + '"') else ""} \
      ~{true="--durations" false="" durationsDurations} \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="--list-test-names-only" false="" listListTestNamesOnly} \
      ~{true="--list-reporters" false="" listListReporters} \
      ~{true="--order" false="" orderOrder} \
      ~{true="--rng-seed" false="" rngRngSeed} \
      ~{true="--force-colour" false="" forceForceColour}
  >>>
}