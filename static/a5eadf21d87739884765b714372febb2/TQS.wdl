version 1.0

task TQS.py {
  input {
    String lengthLength
    String thresholdThreshold
    String differenceDifference
    String consecConsec
    Boolean verboseVerbose
  }
  command <<<
    TQS.py \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(differenceDifference) then ("--difference " +  '"' + differenceDifference + '"') else ""} \
      ~{if defined(consecConsec) then ("--consec " +  '"' + consecConsec + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}