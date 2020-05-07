version 1.0

task SlamdunkAll {
  input {
    Int maxMaxPolya
    String topTopN
    String threadsThreads
    Boolean quantQuantSeq
    Boolean endEndToEnd
    Boolean multimapMultimap
    String minMinMq
    String minMinIdentity
    String maxMaxNm
    String minMinCoverage
    String varVarFraction
    String conversionConversionThreshold
    Int maxMaxReadLength
    Int minMinBaseQual
    String sampleSampleName
    String sampleSampleType
    String sampleSampleTime
    String sampleSampleIndex
    Boolean skipSkipSam
    File? filesFiles
  }
  command <<<
    slamdunk all \
      ~{filesFiles} \
      ~{if defined(maxMaxPolya) then ("--max-polya " +  '"' + maxMaxPolya + '"') else ""} \
      ~{if defined(topTopN) then ("--topn " +  '"' + topTopN + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--quantseq" false="" quantQuantSeq} \
      ~{true="--endtoend" false="" endEndToEnd} \
      ~{true="--multimap" false="" multimapMultimap} \
      ~{if defined(minMinMq) then ("--min-mq " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min-identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(maxMaxNm) then ("--max-nm " +  '"' + maxMaxNm + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(varVarFraction) then ("--var-fraction " +  '"' + varVarFraction + '"') else ""} \
      ~{if defined(conversionConversionThreshold) then ("--conversion-threshold " +  '"' + conversionConversionThreshold + '"') else ""} \
      ~{if defined(maxMaxReadLength) then ("--max-read-length " +  '"' + maxMaxReadLength + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sampleName " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(sampleSampleType) then ("--sampleType " +  '"' + sampleSampleType + '"') else ""} \
      ~{if defined(sampleSampleTime) then ("--sampleTime " +  '"' + sampleSampleTime + '"') else ""} \
      ~{if defined(sampleSampleIndex) then ("--sample-index " +  '"' + sampleSampleIndex + '"') else ""} \
      ~{true="--skip-sam" false="" skipSkipSam}
  >>>
}