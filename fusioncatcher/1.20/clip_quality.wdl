version 1.0

task ClipQuality.py {
  input {
    String inputInput
    String outputOutput
    String logLog
    String lengthLength
    String thresholdThreshold
    String scoreScoreType
    String authorAuthor
    Boolean quietQuiet
    String processesProcesses
  }
  command <<<
    clip_quality.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(scoreScoreType) then ("--score-type " +  '"' + scoreScoreType + '"') else ""} \
      ~{if defined(authorAuthor) then ("--author " +  '"' + authorAuthor + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""}
  >>>
}