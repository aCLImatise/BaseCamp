version 1.0

task Rfmix {
  input {
    Float crfCrfSpacing
    Float rfRfWindowSize
    Float crfCrfWeight
    Float generationsGenerations
    Int emEmIterations
    Boolean reanalyzeReanalyzeReference
    Int nodeNodeSize
    Int treesTrees
    Float maxMaxMissing
    Int bootstrapBootstrapMode
    Int rfRfMinimumSnps
    String analyzeAnalyzeRange
    String debugDebug
    Int nNThreads
    String randomRandomSeed
  }
  command <<<
    rfmix \
      ~{if defined(crfCrfSpacing) then ("--crf-spacing " +  '"' + crfCrfSpacing + '"') else ""} \
      ~{if defined(rfRfWindowSize) then ("--rf-window-size " +  '"' + rfRfWindowSize + '"') else ""} \
      ~{if defined(crfCrfWeight) then ("--crf-weight " +  '"' + crfCrfWeight + '"') else ""} \
      ~{if defined(generationsGenerations) then ("--generations " +  '"' + generationsGenerations + '"') else ""} \
      ~{if defined(emEmIterations) then ("--em-iterations " +  '"' + emEmIterations + '"') else ""} \
      ~{true="--reanalyze-reference" false="" reanalyzeReanalyzeReference} \
      ~{if defined(nodeNodeSize) then ("--node-size " +  '"' + nodeNodeSize + '"') else ""} \
      ~{if defined(treesTrees) then ("--trees " +  '"' + treesTrees + '"') else ""} \
      ~{if defined(maxMaxMissing) then ("--max-missing " +  '"' + maxMaxMissing + '"') else ""} \
      ~{if defined(bootstrapBootstrapMode) then ("--bootstrap-mode " +  '"' + bootstrapBootstrapMode + '"') else ""} \
      ~{if defined(rfRfMinimumSnps) then ("--rf-minimum-snps " +  '"' + rfRfMinimumSnps + '"') else ""} \
      ~{if defined(analyzeAnalyzeRange) then ("--analyze-range " +  '"' + analyzeAnalyzeRange + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(nNThreads) then ("--n-threads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""}
  >>>
}