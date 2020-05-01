version 1.0

task SeqPurge {
  input {
    File in1In1
    File in2In2
    File out1Out1
    File out2Out2
    String a1A1
    String a2A2
    Float matchMatchPerc
    Float mepMep
    Int qQCut
    Int qQWin
    Int qQOff
    Int nNCut
    Int minMinLen
    Int threadsThreads
    File out3Out3
    File summarySummary
    File qcQc
    Int prefetchPrefetch
    Boolean ecEc
    Boolean debugDebug
    Int progressProgress
    Int compressionCompressionLevel
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    SeqPurge \
      ~{if defined(in1In1) then ("-in1 " +  '"' + in1In1 + '"') else ""} \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(out1Out1) then ("-out1 " +  '"' + out1Out1 + '"') else ""} \
      ~{if defined(out2Out2) then ("-out2 " +  '"' + out2Out2 + '"') else ""} \
      ~{if defined(a1A1) then ("-a1 " +  '"' + a1A1 + '"') else ""} \
      ~{if defined(a2A2) then ("-a2 " +  '"' + a2A2 + '"') else ""} \
      ~{if defined(matchMatchPerc) then ("-match_perc " +  '"' + matchMatchPerc + '"') else ""} \
      ~{if defined(mepMep) then ("-mep " +  '"' + mepMep + '"') else ""} \
      ~{if defined(qQCut) then ("-qcut " +  '"' + qQCut + '"') else ""} \
      ~{if defined(qQWin) then ("-qwin " +  '"' + qQWin + '"') else ""} \
      ~{if defined(qQOff) then ("-qoff " +  '"' + qQOff + '"') else ""} \
      ~{if defined(nNCut) then ("-ncut " +  '"' + nNCut + '"') else ""} \
      ~{if defined(minMinLen) then ("-min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(out3Out3) then ("-out3 " +  '"' + out3Out3 + '"') else ""} \
      ~{if defined(summarySummary) then ("-summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(qcQc) then ("-qc " +  '"' + qcQc + '"') else ""} \
      ~{if defined(prefetchPrefetch) then ("-prefetch " +  '"' + prefetchPrefetch + '"') else ""} \
      ~{true="-ec" false="" ecEc} \
      ~{true="-debug" false="" debugDebug} \
      ~{if defined(progressProgress) then ("-progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(compressionCompressionLevel) then ("-compression_level " +  '"' + compressionCompressionLevel + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}