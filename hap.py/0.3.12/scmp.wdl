version 1.0

task Scmp {
  input {
    String inputInputFile
    Boolean oO
    Boolean rR
    Boolean lL
    String qqQqField
    Boolean oO
    String limitLimitRecords
    String messageMessageEvery
    Boolean fF
    String threadsThreads
    String blockBlockSize
    String minMinVarDistance
    Boolean mM
    String distanceDistanceMaxDist
    String enumerateEnumerateMaxEnum
  }
  command <<<
    scmp \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{if defined(qqQqField) then ("--qq-field " +  '"' + qqQqField + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(limitLimitRecords) then ("--limit-records " +  '"' + limitLimitRecords + '"') else ""} \
      ~{if defined(messageMessageEvery) then ("--message-every " +  '"' + messageMessageEvery + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--blocksize " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(minMinVarDistance) then ("--min-var-distance " +  '"' + minMinVarDistance + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{if defined(distanceDistanceMaxDist) then ("--distance-maxdist " +  '"' + distanceDistanceMaxDist + '"') else ""} \
      ~{if defined(enumerateEnumerateMaxEnum) then ("--enumerate-maxenum " +  '"' + enumerateEnumerateMaxEnum + '"') else ""}
  >>>
}