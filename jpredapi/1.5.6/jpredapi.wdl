version 1.0

task Jpredapi {
  input {
    Boolean silentSilent
    Boolean extractExtract
    Boolean skipSkipPdb
    String modeMode
    String formatFormat
    File fileFile
    String seqSeq
    Boolean emailEmail
    String nameName
    String jobidJobid
    File resultsResults
    String restRest
    String jpred4Jpred4
    Int waitWait
    Int attemptsAttempts
  }
  command <<<
    jpredapi \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--extract" false="" extractExtract} \
      ~{true="--skipPDB" false="" skipSkipPdb} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{true="--email" false="" emailEmail} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(jobidJobid) then ("--jobid " +  '"' + jobidJobid + '"') else ""} \
      ~{if defined(resultsResults) then ("--results " +  '"' + resultsResults + '"') else ""} \
      ~{if defined(restRest) then ("--rest " +  '"' + restRest + '"') else ""} \
      ~{if defined(jpred4Jpred4) then ("--jpred4 " +  '"' + jpred4Jpred4 + '"') else ""} \
      ~{if defined(waitWait) then ("--wait " +  '"' + waitWait + '"') else ""} \
      ~{if defined(attemptsAttempts) then ("--attempts " +  '"' + attemptsAttempts + '"') else ""}
  >>>
}