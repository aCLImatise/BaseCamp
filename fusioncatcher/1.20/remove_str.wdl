version 1.0

task RemoveStr.py {
  input {
    String inputInput
    String outputOutput
    String strStr
    String logLog
    String overlapOverlap
    String lengthLength
    String kmKmEr
    String thresholdThreshold
    String authorAuthor
    Boolean quietQuiet
    String processesProcesses
  }
  command <<<
    remove_str.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(strStr) then ("--str " +  '"' + strStr + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""}
  >>>
}