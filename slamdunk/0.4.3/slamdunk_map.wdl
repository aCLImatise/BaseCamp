version 1.0

task SlamdunkMap {
  input {
    String topTopN
    Int maxMaxPolya
    String threadsThreads
    Boolean quantQuantSeq
    Boolean endEndToEnd
    String sampleSampleName
    String sampleSampleType
    String sampleSampleTime
    String sampleSampleIndex
    Boolean skipSkipSam
    File? filesFiles
  }
  command <<<
    slamdunk map \
      ~{filesFiles} \
      ~{if defined(topTopN) then ("--topn " +  '"' + topTopN + '"') else ""} \
      ~{if defined(maxMaxPolya) then ("--max-polya " +  '"' + maxMaxPolya + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--quantseq" false="" quantQuantSeq} \
      ~{true="--endtoend" false="" endEndToEnd} \
      ~{if defined(sampleSampleName) then ("--sampleName " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(sampleSampleType) then ("--sampleType " +  '"' + sampleSampleType + '"') else ""} \
      ~{if defined(sampleSampleTime) then ("--sampleTime " +  '"' + sampleSampleTime + '"') else ""} \
      ~{if defined(sampleSampleIndex) then ("--sample-index " +  '"' + sampleSampleIndex + '"') else ""} \
      ~{true="--skip-sam" false="" skipSkipSam}
  >>>
}