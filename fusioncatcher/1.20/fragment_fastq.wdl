version 1.0

task FragmentFastq.py {
  input {
    String outputOutput1
    String outputOutput2
    String logLog
    String windowWindowSize
    String stepStepSize
    String thresholdThresholdRead
    String anchorsAnchors
    String skipSkipShort
    String wiggleWiggleEnd
    Boolean trimTrimN
    Boolean quietQuiet
    String authorAuthor
  }
  command <<<
    fragment_fastq.py \
      ~{if defined(outputOutput1) then ("--output_1 " +  '"' + outputOutput1 + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output_2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(stepStepSize) then ("--step-size " +  '"' + stepStepSize + '"') else ""} \
      ~{if defined(thresholdThresholdRead) then ("--threshold-read " +  '"' + thresholdThresholdRead + '"') else ""} \
      ~{if defined(anchorsAnchors) then ("--anchors " +  '"' + anchorsAnchors + '"') else ""} \
      ~{if defined(skipSkipShort) then ("--skip-short " +  '"' + skipSkipShort + '"') else ""} \
      ~{if defined(wiggleWiggleEnd) then ("--wiggle-end " +  '"' + wiggleWiggleEnd + '"') else ""} \
      ~{true="--trim-n" false="" trimTrimN} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""}
  >>>
}