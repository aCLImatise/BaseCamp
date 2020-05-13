version 1.0

task QuorumCreateDatabase {
  input {
    String sizeSize
    String merMer
    String bitsBits
    String minMinQualValue
    String minMinQualChar
    String threadsThreads
    File outputOutput
    Int reReProbe
  }
  command <<<
    quorum_create_database \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(merMer) then ("--mer " +  '"' + merMer + '"') else ""} \
      ~{if defined(bitsBits) then ("--bits " +  '"' + bitsBits + '"') else ""} \
      ~{if defined(minMinQualValue) then ("--min-qual-value " +  '"' + minMinQualValue + '"') else ""} \
      ~{if defined(minMinQualChar) then ("--min-qual-char " +  '"' + minMinQualChar + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(reReProbe) then ("--reprobe " +  '"' + reReProbe + '"') else ""}
  >>>
}