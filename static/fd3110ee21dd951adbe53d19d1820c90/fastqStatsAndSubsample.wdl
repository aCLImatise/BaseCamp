version 1.0

task FastqStatsAndSubsample {
  input {
    String sampleSampleSize
    String seedSeed
    String smallSmallOk
    Boolean jsonJson
    String? inInFastQ
    String? outOutStats
    String? outOutFastQ
  }
  command <<<
    fastqStatsAndSubsample \
      ~{inInFastQ} \
      ~{if defined(sampleSampleSize) then ("-sampleSize " +  '"' + sampleSampleSize + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(smallSmallOk) then ("-smallOk " +  '"' + smallSmallOk + '"') else ""} \
      ~{true="-json" false="" jsonJson} \
      ~{outOutStats} \
      ~{outOutFastQ}
  >>>
}