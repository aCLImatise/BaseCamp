version 1.0

task DeblurDeblurSeqs {
  input {
    Float meanMeanError
    String errorErrorDist
    Float inInDelProb
    Int inInDelMax
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur deblur-seqs \
      ~{if defined(meanMeanError) then ("--mean-error " +  '"' + meanMeanError + '"') else ""} \
      ~{if defined(errorErrorDist) then ("--error-dist " +  '"' + errorErrorDist + '"') else ""} \
      ~{if defined(inInDelProb) then ("--indel-prob " +  '"' + inInDelProb + '"') else ""} \
      ~{if defined(inInDelMax) then ("--indel-max " +  '"' + inInDelMax + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}