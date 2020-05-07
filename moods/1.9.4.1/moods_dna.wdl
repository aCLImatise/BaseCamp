version 1.0

task MoodsDna.py {
  input {
    Boolean verbosityVerbosity
    Array[String]+ matricesMatrices
    Array[String]+ scoreScoreMatrices
    Array[String]+ sequencesSequences
    String pPValue
    String thresholdThreshold
    String bestBestHits
    String outfileOutfile
    String sepSep
    Boolean noNoRc
    Boolean noNoSnps
    Boolean batchBatch
    String bgBg
    String psPs
    String logLogBase
    String loLoBg
    String thresholdThresholdPrecision
  }
  command <<<
    moods-dna.py \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(scoreScoreMatrices) then ("--score-matrices " +  '"' + scoreScoreMatrices + '"') else ""} \
      ~{if defined(sequencesSequences) then ("--sequences " +  '"' + sequencesSequences + '"') else ""} \
      ~{if defined(pPValue) then ("--p-value " +  '"' + pPValue + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(bestBestHits) then ("--best-hits " +  '"' + bestBestHits + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""} \
      ~{true="--no-rc" false="" noNoRc} \
      ~{true="--no-snps" false="" noNoSnps} \
      ~{true="--batch" false="" batchBatch} \
      ~{if defined(bgBg) then ("--bg " +  '"' + bgBg + '"') else ""} \
      ~{if defined(psPs) then ("--ps " +  '"' + psPs + '"') else ""} \
      ~{if defined(logLogBase) then ("--log-base " +  '"' + logLogBase + '"') else ""} \
      ~{if defined(loLoBg) then ("--lo-bg " +  '"' + loLoBg + '"') else ""} \
      ~{if defined(thresholdThresholdPrecision) then ("--threshold-precision " +  '"' + thresholdThresholdPrecision + '"') else ""}
  >>>
}