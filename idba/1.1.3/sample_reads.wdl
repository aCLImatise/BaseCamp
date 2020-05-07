version 1.0

task SampleReads {
  input {
    String depthDepth
    String errorErrorRate
    String readReadLength
    Boolean pairedPaired
    String sdSd
    String insertInsertDistance
    Boolean printPrintCorrect
    String? simSimReads
    String? reReFfa
    String? readReadSfa
  }
  command <<<
    sample_reads \
      ~{simSimReads} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error_rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(readReadLength) then ("--read_length " +  '"' + readReadLength + '"') else ""} \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(sdSd) then ("--sd " +  '"' + sdSd + '"') else ""} \
      ~{if defined(insertInsertDistance) then ("--insert_distance " +  '"' + insertInsertDistance + '"') else ""} \
      ~{true="--print_correct" false="" printPrintCorrect} \
      ~{reReFfa} \
      ~{readReadSfa}
  >>>
}