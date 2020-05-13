version 1.0

task DeblurRemoveArtifacts {
  input {
    File refRefFp
    File refRefDbFp
    Boolean negateNegate
    Int threadsThreadsPerSample
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur remove-artifacts \
      ~{if defined(refRefFp) then ("--ref-fp " +  '"' + refRefFp + '"') else ""} \
      ~{if defined(refRefDbFp) then ("--ref-db-fp " +  '"' + refRefDbFp + '"') else ""} \
      ~{true="--negate" false="" negateNegate} \
      ~{if defined(threadsThreadsPerSample) then ("--threads-per-sample " +  '"' + threadsThreadsPerSample + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}