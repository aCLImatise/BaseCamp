version 1.0

task SimReadsTran {
  input {
    String errorErrorRate
    String readReadLength
    Boolean pairedPaired
    String sdSd
    String insertInsertDistance
    String? reReFfa
    String? readReadSfa
  }
  command <<<
    sim_reads_tran \
      ~{reReFfa} \
      ~{if defined(errorErrorRate) then ("--error_rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(readReadLength) then ("--read_length " +  '"' + readReadLength + '"') else ""} \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(sdSd) then ("--sd " +  '"' + sdSd + '"') else ""} \
      ~{if defined(insertInsertDistance) then ("--insert_distance " +  '"' + insertInsertDistance + '"') else ""} \
      ~{readReadSfa}
  >>>
}