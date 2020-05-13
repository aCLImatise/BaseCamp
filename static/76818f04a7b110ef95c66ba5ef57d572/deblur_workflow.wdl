version 1.0

task DeblurWorkflow {
  input {
    File seqsSeqsFp
    File outputOutputDir
    Int trimTrimLength
    Int leftLeftTrimLength
    File posPosRefFp
    File posPosRefDbFp
    File negNegRefFp
    File negNegRefDbFp
    Boolean overwriteOverwrite
    Float meanMeanError
    String errorErrorDist
    Float inInDelProb
    Int inInDelMax
    Int minMinReads
    Int minMinSize
    Int threadsThreadsPerSample
    Boolean keepKeepTmpFiles
    Int logLogLevel
    File logLogFile
    Int jobsJobsToStart
    Boolean isIsWorkerThread
  }
  command <<<
    deblur workflow \
      ~{if defined(seqsSeqsFp) then ("--seqs-fp " +  '"' + seqsSeqsFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(trimTrimLength) then ("--trim-length " +  '"' + trimTrimLength + '"') else ""} \
      ~{if defined(leftLeftTrimLength) then ("--left-trim-length " +  '"' + leftLeftTrimLength + '"') else ""} \
      ~{if defined(posPosRefFp) then ("--pos-ref-fp " +  '"' + posPosRefFp + '"') else ""} \
      ~{if defined(posPosRefDbFp) then ("--pos-ref-db-fp " +  '"' + posPosRefDbFp + '"') else ""} \
      ~{if defined(negNegRefFp) then ("--neg-ref-fp " +  '"' + negNegRefFp + '"') else ""} \
      ~{if defined(negNegRefDbFp) then ("--neg-ref-db-fp " +  '"' + negNegRefDbFp + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{if defined(meanMeanError) then ("--mean-error " +  '"' + meanMeanError + '"') else ""} \
      ~{if defined(errorErrorDist) then ("--error-dist " +  '"' + errorErrorDist + '"') else ""} \
      ~{if defined(inInDelProb) then ("--indel-prob " +  '"' + inInDelProb + '"') else ""} \
      ~{if defined(inInDelMax) then ("--indel-max " +  '"' + inInDelMax + '"') else ""} \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(threadsThreadsPerSample) then ("--threads-per-sample " +  '"' + threadsThreadsPerSample + '"') else ""} \
      ~{true="--keep-tmp-files" false="" keepKeepTmpFiles} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(jobsJobsToStart) then ("--jobs-to-start " +  '"' + jobsJobsToStart + '"') else ""} \
      ~{true="--is-worker-thread" false="" isIsWorkerThread}
  >>>
}