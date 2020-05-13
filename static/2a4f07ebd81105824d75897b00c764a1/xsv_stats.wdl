version 1.0

task XsvStats {
  input {
    String selectSelect
    Boolean everythingEverything
    Boolean modeMode
    Boolean cardinalityCardinality
    Boolean medianMedian
    Boolean nullsNulls
    String jobsJobs
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv stats \
      ~{inputInput} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""} \
      ~{true="--everything" false="" everythingEverything} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--cardinality" false="" cardinalityCardinality} \
      ~{true="--median" false="" medianMedian} \
      ~{true="--nulls" false="" nullsNulls} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}