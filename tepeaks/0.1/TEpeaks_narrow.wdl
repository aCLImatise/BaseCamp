version 1.0

task TEpeaksNarrow {
  input {
    String keepKeepDup
    Int shiftShift
    Int lmLmFold
    Int hmHmFold
    String fdrFdr
    Boolean toToLarge
    Int threadsThreads
    Int pilePileUp
    String feFe
    String? argumentsArguments
    String? alignmentAlignmentFiles
  }
  command <<<
    TEpeaks narrow \
      ~{argumentsArguments} \
      ~{if defined(keepKeepDup) then ("--keepDup " +  '"' + keepKeepDup + '"') else ""} \
      ~{if defined(shiftShift) then ("--shift " +  '"' + shiftShift + '"') else ""} \
      ~{if defined(lmLmFold) then ("--lmfold " +  '"' + lmLmFold + '"') else ""} \
      ~{if defined(hmHmFold) then ("--hmfold " +  '"' + hmHmFold + '"') else ""} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{true="--toLarge" false="" toToLarge} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(pilePileUp) then ("--pileup " +  '"' + pilePileUp + '"') else ""} \
      ~{if defined(feFe) then ("--fe " +  '"' + feFe + '"') else ""} \
      ~{alignmentAlignmentFiles}
  >>>
}